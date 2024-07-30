/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "math.h"

#include "MessageRecomposer.h"
#include "ChampiCan.h"

#include "ChampiState.h"

#include <pb_encode.h>
#include <pb_decode.h>
#include "msgs_can.pb.h"
#include "can_ids.hpp"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */


#define MAX_LED 24
#define USE_BRIGHTNESS 0


volatile int datasentflag = 0;

uint8_t LED_Data[MAX_LED][4];
uint8_t LED_Mod[MAX_LED][4];  // for brightness

ChampiCan champi_can;
MessageRecomposer msg_recomposer_led_ring_distances;

ChampiState champi_state;


/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
FDCAN_HandleTypeDef hfdcan1;

TIM_HandleTypeDef htim1;
DMA_HandleTypeDef hdma_tim1_ch1;

UART_HandleTypeDef huart2;

float distances_from_can[24];

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_USART2_UART_Init(void);
static void MX_TIM1_Init(void);
static void MX_FDCAN1_Init(void);
/* USER CODE BEGIN PFP */

void on_receive_led_ring_distances(const std::string &proto_msg);

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */



extern "C"
{
int _write(int file, char *ptr, int len)
{
   for (int DataIdx = 0; DataIdx < len; DataIdx++)
//        ITM_SendChar(*ptr++);
   	HAL_UART_Transmit(&huart2, (uint8_t*)ptr++, 1, HAL_MAX_DELAY);
   return len;
}

}



/**
  * @brief  Rx FIFO 0 callback.
  * @param  hfdcan: pointer to an FDCAN_HandleTypeDef structure that contains
  *         the configuration information for the specified FDCAN.
  * @param  RxFifo0ITs: indicates which Rx FIFO 0 interrupts are signalled.
  *         This parameter can be any combination of @arg FDCAN_Rx_Fifo0_Interrupts.
  * @retval None
  */
void HAL_FDCAN_RxFifo0Callback(FDCAN_HandleTypeDef *hfdcan, uint32_t RxFifo0ITs) {

    // Attention !! Quand on met un breakpoint dans cette fonction, on ne reçoit plus que 2 messages au lieu du
    // bon nombre.

    if ((RxFifo0ITs & FDCAN_IT_RX_FIFO0_NEW_MESSAGE) != RESET) {
        /* Retrieve Rx messages from RX FIFO0 */
        FDCAN_RxHeaderTypeDef RxHeader;
        uint8_t RxData[8];

        if (HAL_FDCAN_GetRxMessage(hfdcan, FDCAN_RX_FIFO0, &RxHeader, RxData) != HAL_OK) {
        	// We do nothing (fun board is not critical)
        }
        /* Handle Interesting messages
         * Pour le moment, on n'utilise pas de mutex ou de choses comme ça, donc il faut faire attention
         * à ne pas modifier trop de variables partagées, et de priviligier la modification de variables
         * de 32 bits ou moins (pour que leur modification soit une opération atomique)
         * */

        if (RxHeader.Identifier == CAN_ID_LED_RING_DISTANCES) {
        	msg_recomposer_led_ring_distances.add_frame(RxData, RxHeader.DataLength);

            if (msg_recomposer_led_ring_distances.check_if_new_full_msg()) {
                std::string proto_msg = msg_recomposer_led_ring_distances.get_full_msg();
                on_receive_led_ring_distances(proto_msg);

            }
        }
    }
}


/**
 * @brief Function to handle the received message from the CAN bus: it decodes the message and updates the
 * velocity command.
 * @param proto_msg : the received message (protobuf encoded)
 */
void on_receive_led_ring_distances(const std::string &proto_msg) {

  // Allocate space for the decoded message.
  msgs_can_LedRingDistances ret_led_ring_distances = msgs_can_LedRingDistances_init_zero;
  // Create a stream that reads from the buffer.
  pb_istream_t stream_ret = pb_istream_from_buffer((const unsigned char *) proto_msg.c_str(), proto_msg.size());
  // Now we are ready to decode the message.
  if (!pb_decode(&stream_ret, msgs_can_LedRingDistances_fields, &ret_led_ring_distances)) {
    // We do nothing (fun board is not critical)
  }

  // Use message
  for (int i = 0; i < 24; i++) {
    distances_from_can[i] = ret_led_ring_distances.distances[i];
   }

   // Print distances
    for (int i = 0; i < 24; i++) {
      printf("%d\t",(int)(distances_from_can[i]*100.0));
    }
    printf("\n");


}



/*! \brief Convert RGB to HSV color space

  Converts a given set of RGB values `r', `g', `b' into HSV
  coordinates. The input RGB values are in the range [0, 1], and the
  output HSV values are in the ranges h = [0, 360], and s, v = [0,
  1], respectively.

  \param fR Red component, used as input, range: [0, 1]
  \param fG Green component, used as input, range: [0, 1]
  \param fB Blue component, used as input, range: [0, 1]
  \param fH Hue component, used as output, range: [0, 360]
  \param fS Hue component, used as output, range: [0, 1]
  \param fV Hue component, used as output, range: [0, 1]

*/
void RGBtoHSV (float fR, float fG, float fB, float *fH, float *fS, float *fV) {
  float fCMax = fmax(fmax(fR, fG), fB);
  float fCMin = fmin(fmin(fR, fG), fB);
  float fDelta = fCMax - fCMin;

  if(fDelta > 0) {
    if(fCMax == fR) {
      *fH = 60 * (fmod(((fG - fB) / fDelta), 6));
    } else if(fCMax == fG) {
      *fH = 60 * (((fB - fR) / fDelta) + 2);
    } else if(fCMax == fB) {
      *fH = 60 * (((fR - fG) / fDelta) + 4);
    }

    if(fCMax > 0) {
      *fS = fDelta / fCMax;
    } else {
      *fS = 0;
    }

    *fV = fCMax;
  } else {
    *fH = 0;
    *fS = 0;
    *fV = fCMax;
  }

  if(*fH < 0.) {
    *fH = 360. + *fH;
  }
}


/*! \brief Convert HSV to RGB color space

  Converts a given set of HSV values `h', `s', `v' into RGB
  coordinates. The output RGB values are in the range [0, 255], and
  the input HSV values are in the ranges h = [0, 360], and s, v =
  [0, 1], respectively.

  \param fR Red component, used as output, range: [0, 1]
  \param fG Green component, used as output, range: [0, 1]
  \param fB Blue component, used as output, range: [0, 1]
  \param fH Hue component, used as input, range: [0, 360]
  \param fS Hue component, used as input, range: [0, 1]
  \param fV Hue component, used as input, range: [0, 1]

*/
void HSVtoRGB (float *fR, float *fG, float *fB, float fH, float fS, float fV) {

  float fC = fV * fS; // Chroma
  float fHPrime = fmod(fH / 60.0, 6);
  float fX = fC * (1 - fabs(fmod(fHPrime, 2) - 1));
  float fM = fV - fC;

  if(0 <= fHPrime && fHPrime < 1) {
    *fR = fC;
    *fG = fX;
    *fB = 0;
  } else if(1 <= fHPrime && fHPrime < 2) {
    *fR = fX;
    *fG = fC;
    *fB = 0;
  } else if(2 <= fHPrime && fHPrime < 3) {
    *fR = 0;
    *fG = fC;
    *fB = fX;
  } else if(3 <= fHPrime && fHPrime < 4) {
    *fR = 0;
    *fG = fX;
    *fB = fC;
  } else if(4 <= fHPrime && fHPrime < 5) {
    *fR = fX;
    *fG = 0;
    *fB = fC;
  } else if(5 <= fHPrime && fHPrime < 6) {
    *fR = fC;
    *fG = 0;
    *fB = fX;
  } else {
    *fR = 0;
    *fG = 0;
    *fB = 0;
  }

  *fR += fM;
  *fG += fM;
  *fB += fM;

  *fR*=255;
  *fG*=255;
  *fB*=255;
}

void Set_LED (int LEDnum, int Red, int Green, int Blue)
{
  LED_Data[LEDnum][0] = LEDnum;
  LED_Data[LEDnum][1] = Green;
  LED_Data[LEDnum][2] = Red;
  LED_Data[LEDnum][3] = Blue;
}

#define PI 3.14159265

void Set_Brightness (int brightness)  // 0-45
{
#if USE_BRIGHTNESS

  if (brightness > 45) brightness = 45;
  for (int i=0; i<MAX_LED; i++)
  {
    LED_Mod[i][0] = LED_Data[i][0];
    for (int j=1; j<4; j++)
    {
      float angle = 90-brightness;  // in degrees
      angle = angle*PI / 180;  // in rad
      LED_Mod[i][j] = (LED_Data[i][j])/(tan(angle));
    }
  }

#endif

}



uint16_t pwmData[(24*MAX_LED)+200];

void WS2812_Send (void)
{
  uint32_t indx=0;
  uint32_t color;


  for (int i= 0; i<MAX_LED; i++)
  {
#if USE_BRIGHTNESS
    color = ((LED_Mod[i][1]<<16) | (LED_Mod[i][2]<<8) | (LED_Mod[i][3]));
#else
    color = ((LED_Data[i][1]<<16) | (LED_Data[i][2]<<8) | (LED_Data[i][3]));
#endif

    for (int i=23; i>=0; i--)
    {
      if (color&(1<<i))
      {
        pwmData[indx] = 142;  // 2/3 of 215
      }

      else pwmData[indx] = 71;  // 1/3 of 215

      indx++;
    }

  }

  for (int i=0; i<200; i++)
  {
    pwmData[indx] = 0;
    indx++;
  }

  HAL_TIM_PWM_Start_DMA(&htim1, TIM_CHANNEL_1, (uint32_t*)pwmData, indx);
  while (!datasentflag){};
  datasentflag = 0;
}


void HAL_TIM_PWM_PulseFinishedCallback(TIM_HandleTypeDef *htim)
{
  HAL_TIM_PWM_Stop_DMA(&htim1, TIM_CHANNEL_1);
  datasentflag=1;
}


void animation_from_distances() {
	float max_dist=2.0;

	for(int i=0; i<24; i++) {
		int B = distances_from_can[i] * 255/max_dist;
		int R = 255 - distances_from_can[i] * 255/max_dist;
		Set_LED(i, 0, 0, B);
	}

	WS2812_Send();
}



void clear()
{
  for (int i=0;i<MAX_LED;i++)
  {
    Set_LED(i, 0, 0, 0);
  }
  WS2812_Send();
}

void explosion_animation()
{
  Set_LED(0, 255, 255, 255);
  WS2812_Send();

  static int pos_1 = 0;
  static int pos_2 = MAX_LED-1;
  static int in_explosion = 0;

  if (in_explosion == 0)
  {
    // applique
    Set_LED(pos_1, 255, 0, 0);
    Set_LED(pos_2, 0, 255, 255);
    WS2812_Send();

    HAL_Delay(100);
    //efface
    Set_LED(pos_1, 0, 0, 0);
    Set_LED(pos_2, 0, 0, 0);
    WS2812_Send();

    //update
    pos_1++;
    pos_2--;


    // si les pos sont égales, on explose
    if (pos_1 == pos_2+1 || pos_1 == pos_2-1 || pos_1 == pos_2)
    {
      in_explosion = 1;
    }
  }
  else
  {
    if (pos_1==MAX_LED || pos_2<0)
    {
      pos_1 = 0;
      pos_2 = MAX_LED-1;
      in_explosion = 0;
      for (int t=255;t>=0;t-=3) {
        for (int i=0;i<MAX_LED;i++) {
          Set_LED(i, t, t, 0);
        }
        WS2812_Send();
        HAL_Delay(10);
      }
      HAL_Delay(3000);
    }
    Set_LED(pos_1, 255, 255, 0);
    Set_LED(pos_2, 255, 255, 0);
    WS2812_Send();
    pos_1++;
    pos_2--;
    HAL_Delay(20);
  }

}

void unique_led_animation()
{
  static int count_red = 0;
  static int count_blue = MAX_LED-1;
  Set_LED(count_red, 255, 0, 0);
  Set_LED(count_blue, 0, 0, 255);

  if (count_red > 0)
    Set_LED(count_red-1, 0, 0, 0);
  if (count_blue < MAX_LED-1)
    Set_LED(count_blue+1, 0, 0, 0);
  count_red++;
  count_blue--;
  if (count_red >= MAX_LED)
  {
    Set_LED(MAX_LED-1, 0, 0, 0);
    count_red = 0;
  }
  if (count_blue <= 0)
  {
    Set_LED(1, 0, 0, 0);
    count_blue = MAX_LED-1;
  }
  WS2812_Send();
  HAL_Delay(20);
}
void snake_animation()
{
  static int offset = 0;
  static float step = 255/50;
  // generation du tableau
  static int leds_val[MAX_LED];
  for (int i=0;i<15;i++)
  {
    leds_val[i] = 1/(1+exp((((MAX_LED-i)*step/21)-6)*-1))*255;

  }
  for (int i=15;i<MAX_LED;i++)
  {
    leds_val[i] = 0;
  }

  int c;
  for (int i=0;i<MAX_LED;i++)
  {
    c = i+offset;
    if (c>MAX_LED)
      c -= MAX_LED;
    Set_LED(i, 0, 0, leds_val[c]);
  }

  WS2812_Send();
  HAL_Delay(50);


  offset+=1;
  if (offset>MAX_LED)
    offset = 0;
}
void brush_animation() {
  static int ON = 1;
  static int red;

  if (ON==1)
    red = 255;
  else
    red = 0;

  for (int i=0;i<MAX_LED;i++) {
    Set_LED(i, red, 0, 0);
    WS2812_Send();
    HAL_Delay(18);
  }
  if (ON==1)
    ON = 0;
  else
    ON = 1;
}

void mistake_animation() {
  static int count = 0;
  static int ON = 1;
  static int red;

  if (ON==1)
    red = 255;
  else
    red = 0;

  for (int i=MAX_LED-1;i>count;i--) {
    Set_LED(i, red, 0, 0);
    WS2812_Send();
    HAL_Delay(20);
  }
  if (ON==1)
    ON = 0;
  else
    ON = 1;


  count++;
  if (count==MAX_LED)
    count = 0;
}

void loading_animation() {
  static int count = 0;
  static float h,s,v, r,g,b;
  h = 0;
  s = 1;
  v = 1;

	for (int i=0;i<count;i++) {
	  h = i*10;
	  HSVtoRGB(&r,&g,&b,h,s,v);
		Set_LED(i, r, g, b); // R G B
	}
  WS2812_Send();


    for (int i=MAX_LED-1;i>count;i--) {
      h = i*10;
      HSVtoRGB(&r,&g,&b,h,s,v);
    	Set_LED(i, r, g, b);
    	if (i+1<MAX_LED)
    		Set_LED(i+1, 0, 0, 0);
    	WS2812_Send();
    	HAL_Delay(20);
    }

    count++;
    if (count==MAX_LED)
    	count = 0;
}

void hyper_style_animation()
{
  static float h,s,v, r,g,b;
  h = 0;
  s = 1;
  v = 1;

  static float step = 360/MAX_LED;
  static int offset = 0;

  for (int i=0;i<MAX_LED;i++) {
    HSVtoRGB(&r,&g,&b,h,s,v);
    Set_LED(i, r, g, b);
    h+=step+offset;
    if (h>360)
      h = h-360;
  }
  WS2812_Send();
  HAL_Delay(100);
  offset+=1;
}

void turning_rainbow_animation()
{
  static float h,s,v, r,g,b;
  h = 0;
  s = 1;
  v = 1;

  static float step = 360/MAX_LED;
  static int offset = 0;

  // ANIMATION
  h = offset;
  for (int i=0;i<MAX_LED;i++) {
    HSVtoRGB(&r,&g,&b,h,s,v);
    Set_LED(i, r, g, b);
    h+=step;
    if (h>=360)
      h = h-360;
  }
  WS2812_Send();
  HAL_Delay(1);
  offset+=1;
  if (offset>=360)
    offset = 0;

}






void setup() {

    champi_can = ChampiCan(&hfdcan1);
    msg_recomposer_led_ring_distances = MessageRecomposer();

    if (champi_can.start() != 0) {
        // TODO: On a jamais rencontré cette erreur.
        Error_Handler();
    }


    // set all elements of distances_from_can to 0
    for (int i = 0; i < 24; i++) {
        distances_from_can[i] = 0;
    }
}


/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_USART2_UART_Init();
  MX_TIM1_Init();
  MX_FDCAN1_Init();
  /* USER CODE BEGIN 2 */


  setup();

  int i = 0;
  int counter = 0;
  while (1)
  {
    //turning_rainbow_animation();
	animation_from_distances();
  }

  while (1)
  {

    switch (i)
    {
    case 0:
      turning_rainbow_animation();
      break;
    case 1:
      hyper_style_animation();
      break;
    case 2:
      loading_animation();
      break;
    case 3:
      brush_animation();
      break;
    case 4:
      snake_animation();
      break;
    }
    counter ++;
    if (counter == 100)
    {
      counter = 0;
      i++;
      if (i>4)
        i=0;
    }
  }

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1_BOOST);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = RCC_PLLM_DIV4;
  RCC_OscInitStruct.PLL.PLLN = 85;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief FDCAN1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_FDCAN1_Init(void)
{

  /* USER CODE BEGIN FDCAN1_Init 0 */

  /* USER CODE END FDCAN1_Init 0 */

  /* USER CODE BEGIN FDCAN1_Init 1 */

  /* USER CODE END FDCAN1_Init 1 */
  hfdcan1.Instance = FDCAN1;
  hfdcan1.Init.ClockDivider = FDCAN_CLOCK_DIV1;
  hfdcan1.Init.FrameFormat = FDCAN_FRAME_CLASSIC;
  hfdcan1.Init.Mode = FDCAN_MODE_NORMAL;
  hfdcan1.Init.AutoRetransmission = DISABLE;
  hfdcan1.Init.TransmitPause = DISABLE;
  hfdcan1.Init.ProtocolException = DISABLE;
  hfdcan1.Init.NominalPrescaler = 10;
  hfdcan1.Init.NominalSyncJumpWidth = 1;
  hfdcan1.Init.NominalTimeSeg1 = 14;
  hfdcan1.Init.NominalTimeSeg2 = 2;
  hfdcan1.Init.DataPrescaler = 10;
  hfdcan1.Init.DataSyncJumpWidth = 1;
  hfdcan1.Init.DataTimeSeg1 = 14;
  hfdcan1.Init.DataTimeSeg2 = 2;
  hfdcan1.Init.StdFiltersNbr = 0;
  hfdcan1.Init.ExtFiltersNbr = 0;
  hfdcan1.Init.TxFifoQueueMode = FDCAN_TX_FIFO_OPERATION;
  if (HAL_FDCAN_Init(&hfdcan1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN FDCAN1_Init 2 */

  /* USER CODE END FDCAN1_Init 2 */

}

/**
  * @brief TIM1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM1_Init(void)
{

  /* USER CODE BEGIN TIM1_Init 0 */

  /* USER CODE END TIM1_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};
  TIM_BreakDeadTimeConfigTypeDef sBreakDeadTimeConfig = {0};

  /* USER CODE BEGIN TIM1_Init 1 */

  /* USER CODE END TIM1_Init 1 */
  htim1.Instance = TIM1;
  htim1.Init.Prescaler = 0;
  htim1.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim1.Init.Period = 215;
  htim1.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim1.Init.RepetitionCounter = 0;
  htim1.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim1) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim1, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_Init(&htim1) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterOutputTrigger2 = TIM_TRGO2_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim1, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCNPolarity = TIM_OCNPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  sConfigOC.OCIdleState = TIM_OCIDLESTATE_RESET;
  sConfigOC.OCNIdleState = TIM_OCNIDLESTATE_RESET;
  if (HAL_TIM_PWM_ConfigChannel(&htim1, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  sBreakDeadTimeConfig.OffStateRunMode = TIM_OSSR_DISABLE;
  sBreakDeadTimeConfig.OffStateIDLEMode = TIM_OSSI_DISABLE;
  sBreakDeadTimeConfig.LockLevel = TIM_LOCKLEVEL_OFF;
  sBreakDeadTimeConfig.DeadTime = 0;
  sBreakDeadTimeConfig.BreakState = TIM_BREAK_DISABLE;
  sBreakDeadTimeConfig.BreakPolarity = TIM_BREAKPOLARITY_HIGH;
  sBreakDeadTimeConfig.BreakFilter = 0;
  sBreakDeadTimeConfig.BreakAFMode = TIM_BREAK_AFMODE_INPUT;
  sBreakDeadTimeConfig.Break2State = TIM_BREAK2_DISABLE;
  sBreakDeadTimeConfig.Break2Polarity = TIM_BREAK2POLARITY_HIGH;
  sBreakDeadTimeConfig.Break2Filter = 0;
  sBreakDeadTimeConfig.Break2AFMode = TIM_BREAK_AFMODE_INPUT;
  sBreakDeadTimeConfig.AutomaticOutput = TIM_AUTOMATICOUTPUT_DISABLE;
  if (HAL_TIMEx_ConfigBreakDeadTime(&htim1, &sBreakDeadTimeConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM1_Init 2 */

  /* USER CODE END TIM1_Init 2 */
  HAL_TIM_MspPostInit(&htim1);

}

/**
  * @brief USART2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART2_UART_Init(void)
{

  /* USER CODE BEGIN USART2_Init 0 */

  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 115200;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  huart2.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart2.Init.ClockPrescaler = UART_PRESCALER_DIV1;
  huart2.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetTxFifoThreshold(&huart2, UART_TXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetRxFifoThreshold(&huart2, UART_RXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_DisableFifoMode(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}

/**
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void)
{

  /* DMA controller clock enable */
  __HAL_RCC_DMAMUX1_CLK_ENABLE();
  __HAL_RCC_DMA1_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Channel1_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel1_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
/* USER CODE BEGIN MX_GPIO_Init_1 */
/* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : LD2_Pin */
  GPIO_InitStruct.Pin = LD2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LD2_GPIO_Port, &GPIO_InitStruct);

/* USER CODE BEGIN MX_GPIO_Init_2 */
/* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
