/* Creating a Code Referenced Program by naming blocks of code
 - Add Minim from Sketch / Import Library / Minim
 - Display: fullScreen() v. use shorter side as a Square based on fullScreen
 - DIVs and Global Variables, includes DIV Population
 - Music Button Shapes
 - Colours and Hoverover Feedback
 - Sound Effects and Music Playing (students to build Quit Button Sound)
 - Text and using Meta Data
 
 - CAUTION: Text shows the song cued to play, not when the song is playing
 - It's an Odd Algorithm meant for grading purposes
 - Use this algorithm only as a guide to make another one
 
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
  divPopulation();
  DIVs(); //See Buttons
  musicButtonShapes();
  nightMode=false; //initialization in setup() only
  colourPopulation();
  musicSetup();
  textSetup();
  testMetaData(); //Note: println only
  //
} //End setup
//
void draw() {
  //println ("My Mouse is", mouseX, mouseY);
  //println (playButton);
  hoverOver_draw(); //See Buttons
  //
  saveSongTitle(); //See Music Meta Data
  drawText();
  //
} //End draw
//
void mousePressed() {
  //Quit Button: does not use Boolean, only mouseX&Y already present in system key variables
  //CAUTION: must use if-elseIf-else or Clickable Screen will get confused
  if ( mouseX>quitDivX && mouseX<quitDivX+quitDivWidth && mouseY>quitDivY &&mouseY<quitDivY+quitDivHeight ) {
    quitButton(); //See Below
  }
} //End Mouse Pressed
//
void keyPressed() {
  //Note, CAPs Lock on Code: key=='[CAP]' || key=='[lowerCase]'
  //Note: if ( key==CODED || keyCode==SpecialKey ) ; //Special Keys abriviated CAPS
  //CAUTION: Order Matters
  if (key=='Q' || key=='q') {
    quitButton();  //See Below
  } //Quit Button
  if (key=='D' || key=='d') {
    if ( nightMode == false ) {
      nightMode = true;
    } else {
      nightMode = false;
    }
    colourPopulation();
  } //Night Mode
  //
  musicFunctionsKeyPressed(); //See Music
} //End Key Pressed
//
//End MAIN Program
