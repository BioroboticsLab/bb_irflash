#include <util/delay.h>

#define PIN_CAM_A         3
#define PIN_CAM_B         9
#define PIN_LED_A         5
#define PIN_LED_B         6
#define TARGET_FPS        6

#define TRIGGER_MODE_SIMULTANEOUS
// #define TRIGGER_MODE_ALTERNATING

#define LED_LATENCY_US    1000   
#define CAM_LATENCY_US    1000       

// Needs to be compile-time constant.
// void accurateDelayMicroseconds(float us)
#define accurateDelayMicroseconds(us)\
{\
  noInterrupts();\
  _delay_us(us);\
  interrupts();\
}\

// the setup function runs once when you press reset or power the board
void setup() {
  pinMode(PIN_CAM_A, OUTPUT);
  pinMode(PIN_CAM_B, OUTPUT);
  pinMode(PIN_LED_A, OUTPUT);
  pinMode(PIN_LED_B, OUTPUT);
}

void triggerSimultaneous()
{
  // switch both LED boards on
  analogWrite(PIN_LED_A, 255);
  analogWrite(PIN_LED_B, 255);

  // wait 1 ms for the LEDs to reach maximum brightness
  accurateDelayMicroseconds(LED_LATENCY_US);
  
  // trigger cameras to record a frame
  analogWrite(PIN_CAM_A, 255);
  analogWrite(PIN_CAM_B, 255);

  // wait 1 ms for the cams before switching off
  accurateDelayMicroseconds(CAM_LATENCY_US);
  
  // set cam trigger off
  analogWrite(PIN_CAM_A, 0);
  analogWrite(PIN_CAM_B, 0);

  // switch both LED boards off
  analogWrite(PIN_LED_A, 0);
  analogWrite(PIN_LED_B, 0);
}

void loop() 
{  

  //number of ms defined by the framerate minus the combined waiting times after LED and cam trigger, respectively (in ms)
  const float WAIT_UNTIL_NEXT_FRAME_US = 1000000.0 / TARGET_FPS - (LED_LATENCY_US + CAM_LATENCY_US);

  // debug LED on 
  digitalWrite(13, HIGH);
  
  int i=0;
  for(i=0 ; i<TARGET_FPS ; i++)
  {
    // trigger cams and LEDs
    triggerSimultaneous();

    // wait remaining time
    accurateDelayMicroseconds( WAIT_UNTIL_NEXT_FRAME_US );
  }

  // debug LED off 
  digitalWrite(13, LOW);  
}
