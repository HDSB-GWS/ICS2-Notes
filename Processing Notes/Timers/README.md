# Timers

## The dangerous way - delay()
This is the way you should **NOT** implement time delays in your program.  The problem is that the delay command halts your entire program.  It will end up breaking any other animations you have in your program.  FYI `delay()` is considered a **blocking** command as everything else has to wait for this command to complete.
```java
int ellipseDrawDelay = 1000; //Draw time delay in miliseconds

void setup() {
  size(500, 400);
  background(220);
}

void draw() {
  delay(ellipseDrawDelay);  //If you have other code in your program, EVERYTHING will pause and wait at this point
  fill(random(255), random(255), random(255));
  ellipse(random(400), random(400), random(50), random(50));
}
```

# Using the millis() command
Using the `millis()` command and some variables to store delay values you can implement a delay that is **non-blocking**.
```java
int ellipseDrawDelay = 1000; //Draw time delay in miliseconds
int ellipseDrawTime = 0; //The time the ellipse was last drawn
int currentTime; //The current time of the program;

void setup() {
  size(500, 400);
  background(220);
}

void draw() {

  //Get the current time
  currentTime = millis();

  //Check to see if the time has elapsed    
  if (currentTime > ellipseDrawTime) {
    //Draw a random ellipse
    fill(random(255), random(255), random(255));
    ellipse(random(400), random(400), random(50), random(50));

    //Set new time to check for
    ellipseDrawTime = currentTime + ellipseDrawDelay;
  }
}
```


## Adding some extra control Variables
The prior example shows off the concept, but you can get a more refined effect by using some control variables instead of drawing directly inside your delay code.
```java
/*-----------------------------------------------------------------------------
 Name:        Timer Example 2
 Purpose:     To provide an example program about the basics of timers

 Author:      Mr. Brooks
 Created:     Jan 3, 2021
 Updated:     Jan 3, 2021
 -----------------------------------------------------------------------------*/

//Global Variables
int ellipseDrawDelay = 1000; //Draw time delay in miliseconds
int ellipseDrawTime = 0; //The time the ellipse was last drawn
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
}

```
# Video Explanation
If you prefer to watch a video please check out a recording from class: https://drive.google.com/file/d/1ndP_C3KJv9QovMOzc1hiIXyeg-6Ko_Ub/view

# Homework
1. Try implementing a `millis()` based delay into one of your other programs.
