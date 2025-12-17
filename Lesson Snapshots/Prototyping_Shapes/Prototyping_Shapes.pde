/* DIVs 2D Rectangles
 - Step One: nameing the rectangles by referencing the variables
 - Writing a computer program backwards from an object
 
 Future Steps
 - Step Two: developing the Display CANVAS & the Ternary Operator
 - Step Three: populating variables (local v global and type)
 - turning on and off the prototype
 */
//
//Display CANVAS
//size(); //width //height
fullScreen(); //displayWidth //displayHeight
int appWidth = displayWidth;
int appHeight = displayHeight;
//
/* AP: building a square in a rectangle
 - Foreshawdows centering an image
 - Introduction to Ternary Operator as population of a comparision
 - Using shapeDimension drastically simplifying the code into a pattern
 int shapeDimension = (appWidth > appHeight) ? appHeight : appWidth;
 int centeringDimensionStart = (appWidth > appHeight) ? (appWidth-appHeight)/2 : (appHeight-appWidth)/2;
 */
//rect(x, y, width, height);
//Note: the debuggger expects rectangles to have float or double type variables
//Using Ratios
float divX = appWidth*70/279; // shapeDimension*1/4 + centeringDimensionStart
float divY = appHeight*54/216; //shapeDimension * 1/4
float divWidth = appWidth*140/279; // shapeDimension * 1/2
float divHeight = appHeight*108/216; //Cascading Variable, divWidth 
//
rect(divX, divY, divWidth, divHeight);
//
//square(nameX, nameY, nameDimension);
//line(nameX1, nameY1, nameX2, nameY2);
//triangle(nameX1, nameY1, nameX2, nameY2, nameX3, nameY3);
