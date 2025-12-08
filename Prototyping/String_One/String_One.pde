/* String
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
float stringDivX = appWidth*1/4; //**Akward DIV
float stringDivY = appHeight*1/10;
float stringDivWidth = appWidth*1/2;
float stringDivHeight = appHeight*1/10; // ** Make smaller to test height
//
//Strings, Text, Literal
String title = "Wahoo!";
/* Full String longer than Rectangle,  "Wahoo! I changed 2D Size."
 - When a String just fits the height aspect ratio is the largest, sometimes >1
 - Fonts differs in WHITE SPACE around the foreground "coloured ink"
 */
// Students enter all text from Case Study

/*Fonts from OS
 println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
 String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
 */
int fontSize = 55; //Entire Program
PFont titleFont; //Font Var name
String harrington = "Harrington";
titleFont = createFont (harrington, fontSize);
//Note: DIV to "see" variables
rect( stringDivX, stringDivY, stringDivWidth, stringDivHeight );
//
text( title, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
