/* Text
 - Easy Text, default font, size
 - TBA
 */
//Global Variables
String songTitle;
float fontSize;
PFont titleFont;
//
void easyTextQuitButton() {
  //Note: rect() starts top-right corner, text() starts bottom-right corner
  text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*3/5); //adjust fractions or decimals until working
} //End Easy Text
//
void textSetup() {
  /*Fonts from OS
   println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   //Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
   //Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
   */
  fontSize = appHeight;
  String harrington = "Harrington";
  titleFont = createFont(harrington, fontSize);
  //
  float fontSizeHarrington = 83.0;
  float harringtonAspectRatio = fontSizeHarrington / stringDivHeight;
  fontSize = stringDivHeight*harringtonAspectRatio;
  //
} //End Text Setup
//
void textdraw() {
  fill(purpleInk); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, fontSize); //see variable note
  
  
  
  //ERRORs
  
  
  
  float constantDecrease = 0.99;
int iWhile=0;
while ( textWidth( playListMetaData[currentSong].title() ) > stringDivWidth ) {
  iWhile++;
  //ERROR: infinite loop, requires exit() & println()
  fontSize *= constantDecrease;
  textFont(titleFont, fontSize);
} //End WHILE Error Check Text-wrap
//println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", stringDivWidth-textWidth( playListMetaData[currentSong].title() ), "\tUsing", constantDecrease*100+"%" );
text( playListMetaData[currentSong].title(), stringDivX, stringDivY, stringDivWidth, stringDivHeight );
fill(resetInk);
} //End Text Draw
//
//End Subprogram Text
