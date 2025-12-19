/* DIVs 2D Rectangles
- Step One: nameing the rectangles by referencing the variables
- Writing a computer program backwards from an object

Future Steps
- Step Two: developing the Display CANVAS & the Ternary Operator
- Step Three: populating variables (local v global and type)
*/
//
//Display CANVAS
//size(); //width //height
fullScreen(); //displayWidth //displayHeight
int appWidth = displayWidth;
int appHeight = displayHeight;
//rect(x, y, width, height);
//Note: the debuggger expects rectangles to have float or double type variables
//Using Ratios
float imageDivX = appWidth * 70/279; //Akward DIV, must rename all Mr. Mercer's Variables
float imageDivY = appHeight * 54/216;
float imageDivWidth = appWidth * 140/279;
float imageDivHeight = appHeight * 108/216;
//
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
//
//End MAIN Program
