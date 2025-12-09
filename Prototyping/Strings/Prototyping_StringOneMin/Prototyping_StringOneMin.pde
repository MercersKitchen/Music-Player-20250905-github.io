fullScreen();
//size(500, 100);
int appWidth = displayWidth;
int appHeight = displayHeight;
//Population
float stringDivX = appWidth*1/4;
float stringDivY = appHeight*1/10;
float stringDivWidth = appWidth*1/2;
float stringDivHeight = appHeight*1/10;
//
//Strings, Text, Literal
String title = "Wahoo!"; //"Wahoo! I changed 2D Size."
//
/*Fonts from OS
 println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
 String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
 //Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
 //Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
 */
float fontSize = appHeight;
PFont titleFont;
String harrington = "Harrington";
titleFont = createFont(harrington, fontSize);
//
println(fontSize, harrington, titleFont);
float fontSizeHarrington = 83.0;
println("Font Size:", fontSize );
float harringtonAspectRatio = fontSizeHarrington / stringDivHeight;
fontSize = stringDivHeight*harringtonAspectRatio;
println("Harrington Aspect Ratio:", harringtonAspectRatio);
println(); //Skip a line
//
rect( stringDivX, stringDivY, stringDivWidth, stringDivHeight );
//
color purpleInk = #2C08FF;
color whiteInk = #FFFFFF;
color resetInk = whiteInk;
fill(purpleInk); //Ink, hexidecimal copied from Color Selector
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
//
textFont(titleFont, fontSize); //see variable note
//
text( title, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
fill(resetInk);
//
//End Program
