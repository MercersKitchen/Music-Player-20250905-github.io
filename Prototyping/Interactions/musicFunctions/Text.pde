/* Text
 - Easy Text, default font, size
 - TBA
 */
//Global Variables
String songTitle;
float fontSize=0; //Able to set the First Font Size to AppHeight
PFont titleFont;
//
void drawText() {
  textdraw();
  songTitle();
  //
} // End Draw Text
//
void easyTextQuitButton() {
  //Note: rect() starts top-right corner, text() starts bottom-right corner
  //fill(quitButtonInk); //Activate if using full textSetup & textDraw
  //NOTE: ERROR in formatting, need full Text Algorithm once Text Setup Executed, see below
  textAlign (CENTER, BASELINE); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*1/2); //adjust fractions or decimals until working
  //fill(resetBlackink); //Activate if using full textSetup & textDraw
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
  if ( fontSize==0 ) fontSize = appHeight;
  
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
  //NOTE: Only one Font
  textFont(titleFont, fontSize); //see variable note
  float constantDecrease = 0.99;
  int iWhile=0;
  while ( textWidth( playListMetaData[currentSong].title() ) > stringDivWidth ) {
    iWhile++;
    //ERROR: infinite loop, requires exit() & println()
    fontSize *= constantDecrease;
    textFont(titleFont, fontSize);
  } //End WHILE Error Check Text-wrap
  //println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", stringDivWidth-textWidth( playListMetaData[currentSong].title() ), "\tUsing", constantDecrease*100+"%" );
} //End Text Draw
//
void songTitle() {
  textAlign (CENTER, TOP); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  fill(titleInk); //Ink, hexidecimal copied from Color Selector
  text( songTitle, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
  fill(resetInk);
} //End Song Title
void initalFontSize() {
  fontSize = stringDivHeight;
} //End Initial Font Size
//
//End Subprogram Text
