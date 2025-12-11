/* Strings in Mutliple DIVs
 Purpose: prints smallest DIV font creating constant font size
 - create rect() objects, then add FOR Loop demonstrating decreaseing to one line
 - create text() objects, then add FOR Loop, as above
 - create DIV Arrays based on alphaNumeric of primitive variables
 */
//
//Display
fullScreen(); //Landscape
//size(500, 100); //Portrait, testing smaller DIVs ONLY
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//
//Population
int numberOfDIVs = 3; //Note difference between human and comptuer counting
float[] stringDivX = new float[numberOfDIVs];
float[] stringDivY = new float[numberOfDIVs];
float[] stringDivWidth = new float[numberOfDIVs];
float[] stringDivHeight = new float[numberOfDIVs];
stringDivX[0] = appWidth*1/4; //**Akward DIV
stringDivY[0] = appHeight*1/10;
stringDivWidth[0] = appWidth*1/2;
stringDivHeight[0] = appHeight*1/10; // ** Make smaller to test height
stringDivX[1] = stringDivX[0]; //Cascading VARs
stringDivY[1] = appHeight*3/10;
stringDivWidth[1] = appWidth*1/4;
stringDivHeight[1] = stringDivHeight[0]; //Cascading VARs
stringDivX[2] = stringDivX[0]; //Cascading VARs, best practice
stringDivY[2] = appHeight*5/10;
stringDivWidth[2] = appWidth*5/8;
stringDivHeight[2] = stringDivHeight[0]; //Cascading VARs, best practice
//
//Strings, Text, Literal
String title = "Wahoo! I changed 2-dimension Size."; //2D
/* Full String longer than Rectangle, "Wahoo!"
 - When a String just fits the height aspect ratio is the largest, sometimes >1
 - Fonts differs in WHITE SPACE around the foreground "coloured ink"
 */
// Students enter all text from Case Study
//
/*Fonts from OS
 println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
 String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
 //Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
 //Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
 */
//Teacher ONLY: Starts as an int but converted to a float later
//Note: pass appHeight into fontSize and resize, passing a smallest number does not make this error
//CAUTION: strange things happen with font sizes, should have WHILE Check and Percentage Decrease Check
float fontSize = appHeight; //Entire Program, Algorithm to have smallest font size
PFont titleFont; //Font Varaible Name, able to have more than one Font
String harrington = "Harrington"; //Spelling of the Font Matters, see PFont.list() v Create Font above
//Reminder: only letters ending with numbers, underscore means camelCase or snake_case
//Mispelling will cuase a very odd error
titleFont = createFont(harrington, fontSize);
//
/*Measuring Aspect Ratio for Specific Font
 - Use only one DIV
 - Apply to other DIVs
 */
println("Font Size:", fontSize, "\tFont Spelling:", harrington, "\tFont Varaiable Confirmation:", titleFont); //Inspect PFont-type Varaible for Harddrive Address v value
float fontSizeHarrington = 83.0; //Change the number until it fits, largest font size
float divHeightHarrington = stringDivHeight[0];
println("Font Size:", fontSize );
/* Aspect Ratio Manipulations (changes to variables)
 - choose Aspect Ratio that must be mutliplied: fontSize/titleHeight
 - Rewriting fontSize with formulae
 */
//
//Note: DIV to "see" variables
for ( int i=0; i<numberOfDIVs; i++ ) {
  rect( stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
} //End FOR DIVs
//
//Aspect Ratio Calculation
float harringtonAspectRatio = fontSizeHarrington / divHeightHarrington;
//Finding the smallest fontSize in the smallest DIV
fontSize = stringDivHeight[0]*harringtonAspectRatio;

for (int i=0; i<numberOfDIVs; i++) {
 float fontSizeTemp = stringDivHeight[i]*harringtonAspectRatio; //Local Variable holding temporary calcuation compared to current, overwirtten each time
 if ( fontSize>fontSizeTemp) fontSize = fontSizeTemp;
 } //End fontSize FOR

println("Harrington Aspect Ratio:", harringtonAspectRatio, "\tFont Size:", fontSize);
println(); //Skip a line
//
//Drawing Text
//Minimum Lines of code to format, draw text with colour, and become aware of other functions
//Must be before text()
color purpleInk = #2C08FF; //AP MiniLesson on bit, 8-bit or byte (grey scale, 256), colour
color whiteInk = #FFFFFF; //Grey Scale is 255
color resetInk = whiteInk;
fill(purpleInk); //Ink, hexidecimal copied from Color Selector
//Grey Scale 0-255
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
//ERROR Check fontSize, decreasing the text when wrapped or not shown
textFont(titleFont, fontSize); //see variable note
float constantDecrease = 0.99;  //99% of origonal or 1% decrease
//FOR Loop Error, Copy * Paste three times
int iWhile=0; //Counting iterations of WHILE, adjust with optimization and pixel decrease adjustment algorithm
for ( int i=0; i<3; i++ ) {
  while ( textWidth( title ) > stringDivWidth[i] ) {
    iWhile++;
    //ERROR: infinite loop, requires exit() & println()
    fontSize *= constantDecrease; //Assignment Operator  //fontSize = fontSize*0.99;
    textFont(titleFont, fontSize); //see variable note
  } //End WHILE Error Check Text-wrap
  println("Iterations of WHILE:", iWhile, "\tDifference of divWidth & textWidth:", stringDivWidth[i]-textWidth( title ), "\tUsing", constantDecrease*100+"%" ); //Plus sign is concatenation for % symbol, exemplar
} //End FOR Loop, Font Size Check in DIVs
//WHILE Error Check
//textFont() has option to combine font declaration with textSize()
//textFont() is better for more than one PFont Variable
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  text( title, stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
}
fill(resetInk);
//
//End Program
