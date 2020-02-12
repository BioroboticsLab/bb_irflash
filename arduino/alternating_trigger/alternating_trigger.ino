#include <util/delay.h>

#define CamPinA           3
#define CamPinB           9
#define LEDPinA1          5
#define LEDPinA2          6
#define LEDPinB1          10
#define LEDPinB2          11
#define FPS               6
//Flashing time is flash+camFlashOffset+Trigertime
//Workflow: Flash on -> wait the offset -> trigger cam -> wait triggertime
//          -> untrigger cam -> wait flash -> Flash off 
#define flash             (5.5)
#define second            1000.0

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
  pinMode(CamPinA, OUTPUT);
  pinMode(CamPinB, OUTPUT);
  pinMode(LEDPinA1, OUTPUT);
  pinMode(LEDPinB1, OUTPUT);
  pinMode(LEDPinA2, OUTPUT);
  pinMode(LEDPinB2, OUTPUT);
}

void triggerDual(int portCam, int portLED, int portLED2){
  // We trigger on rising-edge.
  analogWrite(portCam,255); // Trigger.
  // Trigger flashes. The camera might need a few micros, but the flashes also need to bright up.
  analogWrite(portLED,255);  
  analogWrite(portLED2,255);
  accurateDelayMicroseconds(3.5 * 1000.0);
  // Reset the signals.
  analogWrite(portCam, 0);
  analogWrite(portLED, 0);
  analogWrite(portLED2, 0);
  // Grace period. Potentially unnecessary.
  // Tiny bit less than the configured flash time, because the function calls also have overhead.
  accurateDelayMicroseconds(1.99 * 1000.0);
}

// the loop function runs over and over again forever
void loop() {  
 
  //E.g. we have two fps: flash at 0 cam A, 250 cam B, 500 cam A ...
  const float halfFlash = (1000.0 * second) / static_cast<float>(FPS) / 2.0 - flash * 1000.0;

  int i=0;
  for(i=0 ; i<FPS ; i++){
    //LED for debug
    digitalWrite(13, HIGH);

    //flash camera A and wait half a frame
    triggerDual(CamPinA,LEDPinA1,LEDPinA2); 
    digitalWrite(13, LOW);
    
    accurateDelayMicroseconds(halfFlash);
    triggerDual(CamPinB,LEDPinB1,LEDPinB2); 
    accurateDelayMicroseconds(halfFlash);
  }
}
