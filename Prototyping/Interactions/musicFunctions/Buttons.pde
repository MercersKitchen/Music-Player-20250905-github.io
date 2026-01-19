/* Buttons
 - quitButton
 * DIVs
 - musicButtonShapes, 2-D Music Buttons
 */
//
void quitButton() {
  noLoop(); //Adjusts the exit of the program using finishing draw()
  exit(); //With noLoop(), exit happens here
  println("Final Line of mousePressed and finishes draw()");
}//End Quit Button
//
void DIVs() {
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
} //End DIVs
//
void musicButtonShapes() {
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
} // End Msuic Button Shapes
//
void quitButtonActive() {
  fill(quitBackgroundActivated);
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
  fill(resetBackground);
  fill(quitButtonInk);
  
  
    //AKWARD
  //Note: rect() starts top-right corner, text() starts bottom-right corner
  text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*3/5); //adjust fractions or decimals until working
  
  
  
  fill(resetInk);
} //End Quit Button Active
//
void quitButtonRegular() {
  fill(quitBackground);
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
  fill(resetBackground);
  fill(quitButtonInk);
  
  
  
    //AKWARD
  //Note: rect() starts top-right corner, text() starts bottom-right corner
  text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*3/5); //adjust fractions or decimals until working
  
  
  
  
  fill(resetInk);
} //End Quit Button Active
//
void playButtonActive() {
  fill(playColourBackgroundActivated);
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
  fill(playColourSymbolActivated);


  //AKWARD
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);



  fill(resetBackground);
} // End Play Button Active
//
void playButtonReady() {
  fill(playColourBackground);
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
  fill(playColourSymbol);

  //AKWARD
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);



  fill(resetBackground);
} // End Play Button Ready
//
//End Buttons Subprogram
