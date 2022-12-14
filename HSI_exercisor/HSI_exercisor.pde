/*
HSI exercisor
djrm 13 December 2022
talks to firmata on arduino uno

Demonstrates the control of analog output (PWM) pins of an Arduino board
running the StandardFirmata firmware.  Moving the mouse horizontally across
the sketch changes the output on pins 9 (value is proportional to the mouse
X coordinate) and 11 (inversely porportional to mouse X).

To use:
* Using the Arduino software, upload the StandardFirmata example (located
  in Examples > Firmata > StandardFirmata) to your Arduino board.
* Run this sketch and look at the list of serial ports printed in the
  message area below. Note the index of the port corresponding to your
  Arduino board (the numbering starts at 0).  (Unless your Arduino board
  happens to be at index 0 in the list, the sketch probably won't work.
  Stop it and proceed with the instructions.)
* Modify the "arduino = new Arduino(...)" line below, changing the number
  in Arduino.list()[0] to the number corresponding to the serial port of
  your Arduino board.  Alternatively, you can replace Arduino.list()[0]
  with the name of the serial port, in double quotes, e.g. "COM5" on Windows
  or "/dev/tty.usbmodem621" on Mac.
* Connect LEDs or other outputs to pins 9 and 11.
* Run this sketch and move your mouse horizontally across the screen.
  
For more information, see: http://playground.arduino.cc/Interfacing/Processing
*/

import processing.serial.*;
import cc.arduino.*;
import controlP5.*;

ControlP5 cp5;

int sliderValue1 = 127;
int sliderValue2 = 127;
int sliderValue3 = 127;
int sliderValue4 = 127;


boolean toggleValue1 = false;
boolean toggleValue2 = false;
boolean toggleValue3 = false;
boolean toggleValue4 = false;

Arduino arduino;

void setup() {
  size(450, 300); 
  noStroke();
  cp5 = new ControlP5(this);

  // add a vertical slider
  cp5.addSlider("sliderValue1")
     .setPosition(100,50)
     .setSize(100,20)
     .setRange(255,0)
     .setValue(127)
     ;
     
  cp5.addSlider("sliderValue2")
     .setPosition(100,100)
     .setSize(100,20)
     .setRange(0,255)
     .setValue(127)
     ;

  cp5.addSlider("sliderValue3")
     .setPosition(100,150)
     .setSize(100,20)
     .setRange(0,255)
     .setValue(127)
     ;

  cp5.addSlider("sliderValue4")
     .setPosition(100,200)
     .setSize(100,20)
     .setRange(0,255)
     .setValue(127)
     ;

  // create a toggle and change the default look to a (on/off) switch look
  cp5.addToggle("toggleValue1")
     .setPosition(300,50)
     .setSize(50,20)
     .setValue(true)
     .setMode(ControlP5.SWITCH)
     ;

  cp5.addToggle("toggleValue2")
     .setPosition(300,100)
     .setSize(50,20)
     .setValue(true)
     .setMode(ControlP5.SWITCH)
     ;

  cp5.addToggle("toggleValue3")
     .setPosition(300,150)
     .setSize(50,20)
     .setValue(true)
     .setMode(ControlP5.SWITCH)
     ;

  cp5.addToggle("toggleValue4")
     .setPosition(300,200)
     .setSize(50,20)
     .setValue(true)
     .setMode(ControlP5.SWITCH)
     ;
     
  // Prints out the available serial ports.
  println(Arduino.list());
  
  // Modify this line, by changing the "0" to the index of the serial
  // port corresponding to your Arduino board (as it appears in the list
  // printed by the line above).
  arduino = new Arduino(this, Arduino.list()[1], 57600);
  
  // Alternatively, use the name of the serial port corresponding to your
  // Arduino (in double-quotes), as in the following line.
  //arduino = new Arduino(this, "/dev/tty.usbmodem621", 57600);
}

void draw() {
  
  // Output analog values (PWM waves) to digital pins 9 and 11.
  // Note that only certain Arduino pins support analog output (PWM).
  // See the documentation for your board for details.
  
  arduino.analogWrite(3, 127);
  
  arduino.analogWrite(5, sliderValue1);
  arduino.analogWrite(9, sliderValue2);
  arduino.analogWrite(6, sliderValue3);
  arduino.analogWrite(10, sliderValue4);
  
  arduino.digitalWrite(7, toggleValue1?1:0);
  arduino.digitalWrite(8, toggleValue2?1:0);
  arduino.digitalWrite(12, toggleValue3?1:0);
  arduino.digitalWrite(11, toggleValue4?1:0);
  
}
