/* Time Stamping, Program efficiency
 
 */
//
//Library - Minim
//
//Global Variables 
int timerStart, currentTime, endSetup;
//
void setup() {
  timerStart = currentTime = millis(); //Measure program start time called "scope"
  println("Beginning", timerStart);
  //Code for Setup()
  endSetup = currentTime - timerStart;
  println("End Setup", endSetup);
} //End setup
//
void draw() {
  println("Draw", timerStart);
  noLoop();
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
