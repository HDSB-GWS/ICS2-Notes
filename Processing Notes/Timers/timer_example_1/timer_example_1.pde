/*-----------------------------------------------------------------------------
 Name:        Timer Example 1
 Purpose:     To provide an example program about the basics of timers
 
 Author:      Mr. Brooks
 Created:     Jan 3, 2021
 Updated:     Jan 3, 2021
 -----------------------------------------------------------------------------*/

//Global Variables
int ellipseDrawDelay = 1000; //Draw time delay in miliseconds
int ellipseDrawTime = 0; //The time the ship was last drawn
int currentTime; //The current time of the program;

void setup() {
  size(500, 400);
  background(220);
}



void draw() {

  //Get the current time
  currentTime = millis();

  //Show what the current time is in the consoler (note: this will slow your program down a lot)
  //print(currentTime);

  //Check to see if the time has elapsed    
  if (ellipseDrawTime < currentTime) {
    //Draw a random ellipse
    fill(random(255), random(255), random(255));
    ellipse(random(400), random(400), random(50), random(50));

    //Set new time to check for
    ellipseDrawTime = currentTime + ellipseDrawDelay;
  }
}
