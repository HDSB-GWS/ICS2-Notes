/*-----------------------------------------------------------------------------
 Name:        Timer Example 2
 Purpose:     To provide an example program about the basics of timers
 
 Author:      Mr. Brooks
 Created:     Jan 3, 2021
 Updated:     Jan 3, 2021
 -----------------------------------------------------------------------------*/

//Global Variables
int ellipseDrawDelay = 1000; //Draw time delay in miliseconds
int ellipseDrawTime = 0; //The time the ship was last drawn
int currentTime; //The current time of the program;

int ellipseX, ellipseY, ellipseWidth, ellipseHeight;  //Position and size of ellipse

void setup() {
  size(500, 400);
}


void draw() {
  //Get the current time
  currentTime = millis();  
  background(220);

  //Check to see if the time has elapsed
  if (ellipseDrawTime < currentTime) {
    //Set the fill to a new color
    fill(random(255), random(255), random(255));

    //Generate a new position for the ellipse
    ellipseX = int(random(400));
    ellipseY = int(random(400));

    //Generate a new size for the ellipse
    ellipseWidth = int(random(50));
    ellipseHeight = int(random(50));

    //Set new time to check for
    ellipseDrawTime = currentTime + ellipseDrawDelay;
  }

  //Draw the ellipse
  ellipse(ellipseX, ellipseY, ellipseWidth, ellipseHeight);
  
  //Show what is happening to the variables in the background
  //textSize(32);
  //text("Current Time: "+currentTime, 20, 50); 
  //text("ellipseDrawTime: "+ellipseDrawTime, 20, 100);
}
