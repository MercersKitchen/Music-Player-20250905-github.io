/* Creating Buttons - HoverOver in draw()
 - Add Minim from Sketch / Import Library / Minim
 - Display: fullScreen() v. use shorter side as a Square based on fullScreen
 - DIVs and Global Variables, includes DIV Population
 */
//
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
//All Global Variables execute first ... A global Variable is a Global Variable
int appWidth, appHeight;
float quitDivX, quitDivY, quitDivWidth, quitDivHeight;
float playDivX, playDivY, playDivWidth, playDivHeight;
float playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3;
//
Boolean playButton=false, quitButton=false;
//
color resetBackground, resetInk, resetBackgroundDay, resetInkDay, resetBackgroundNight, resetInkNight;
color quitButtonInk;
color playColourBackground, playColourSymbol, playColourBackgroundActivated, playColourSymbolActivated;
color quitBackground, quitBackgroundActivated;
Boolean nightMode=false;
/*
void settings() {
  println(displayWidth, displayHeight);
  int shorterSide = ( displayWidth > displayHeight ) ? displayHeight : displayWidth ; //Ternary Operator
  shorterSide *= 0.9; //90%, WINDOW Frame
  size(shorterSide, shorterSide); //ERROR IllegalStateException: cannot use a var in size()
  println("Display Questions", displayWidth, displayHeight, shorterSide);
  println("CANVAS Size Key Variables for setup()", width, height);
} //End settings
*/
void setup() {
  //Display CANVAS
  //size(); //width //height
  fullScreen(); //displayWidth //displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  //DIV Population
  quitDivX = appWidth * 9/10;
  quitDivY = appHeight * 0/10;
  quitDivWidth = appWidth * 1/10;
  quitDivHeight = appHeight * 1/10;
  playDivX = appWidth * 4/10;
  playDivY = appHeight * 4.5/10;
  playDivWidth = appWidth * 2/10;
  playDivHeight = appHeight * 1/10;
  playSymbolX1 = playDivX + playDivWidth * 1/4;
  playSymbolY1 = playDivY + playDivHeight * 1/4;
  playSymbolX2 = playSymbolX1 + playDivWidth * 1/2;
  playSymbolY2 = playDivY + playDivHeight * 1/2;
  playSymbolX3 = playSymbolX1;
  playSymbolY3 = playDivY + playDivHeight * 3/4;
  //
  //DIVs: human verification of variables
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
  //
  //DIVs
  //
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
void quitButton() {
}//End Quit Button
//
//End MAIN Program
