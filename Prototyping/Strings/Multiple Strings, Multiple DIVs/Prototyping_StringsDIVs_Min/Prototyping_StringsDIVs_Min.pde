//Display
fullScreen(); 
//size(500, 100); 
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//
//Population
int numberOfDIVs = 3;
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
String[] text = new String[numberOfDIVs]; //CAUTION: Data intentionally makes STRINGS=numberOfDIVs, one-to-one counting
text[0] = "wahoo ... whipsered";
text[1] = "This DIV is the Problem Child ... Child DIV is an alogorithm joke, see WHILE iterations.";
text[2] = "I wish to be SEEN ... DIV is too big!";
// Students enter all text from Case Study
//
//Font Loading & Aspect Ratio
float fontSize = appHeight;
PFont titleFont;
String harrington = "Harrington";
titleFont = createFont(harrington, fontSize);
float fontSizeHarrington = 83.0;
float divHeightHarrington = stringDivHeight[0];
float harringtonAspectRatio = fontSizeHarrington / divHeightHarrington;
fontSize = stringDivHeight[0]*harringtonAspectRatio; 
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  rect( stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
} //End FOR DIVs
//
//Drawing Text
color purpleInk = #2C08FF; //AP MiniLesson on bit, 8-bit or byte (grey scale, 256), colour
color whiteInk = #FFFFFF; //Grey Scale is 255
color resetInk = whiteInk;
fill(purpleInk);
textAlign (CENTER, CENTER);
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont(titleFont, fontSize); 
float constantDecrease = 0.99;  
int iWhile=0; 
for ( int i=0; i<3; i++ ) {
  while ( textWidth( text[i] ) > stringDivWidth[i] ) {
    iWhile++;
    //ERROR: infinite loop, requires exit() & println()
    fontSize *= constantDecrease; 
    textFont(titleFont, fontSize); 
  } //End WHILE Error Check Text-wrap
} //End FOR Loop, Font Size Check in DIVs
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  text( text[i], stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
}
fill(resetInk);
//
//End Program
