
# Using the Mouse
To make programs that are really useful, we need to give users the ability to interact with our programs.  A nice and easy method of interaction is using the mouse.

## Example #1
The following program will change the background colour every time a mouse button is pressed.

```java
void setup() {
  size(400, 400);
  // create a random background first.
  background(random(255), random(255), random(255));
}

void draw() {
  // left empty since we are only changing backgrounds
}

// called whenever a mouse is pressed - built in function
void mousePressed() {
  background(random(255), random(255), random(255));
}
```

Add the following line inside the mousePressed function, either before or after the background command: `println(mouseButton, mouseX, mouseY);`{:.java}

Run the program again and this time keep an eye on the output in the console as you click different mouse buttons on different parts of the window.

mouseButton:
mouseButton returns the value of the button that was pressed.
While we are seeing numbers in the output, we can actually use the values of CENTER, LEFT or RIGHT to test which button has been pressed

mouseX, mouseY;
These are the locations on the window of the mouse.  So we know exactly where the mouse is when pressed.


Example #2
A box has been drawn on the top left corner.  The goal is that if we click on the box, the changing of the background no longer happens.  Here is our first attempt:

// using the following variables for collision as well as drawing
int boxX = 0;  // x value of the box
int boxY = 0;  // y value of the box
int boxWidth = 50;  // width of the box
int boxHeight = 50;  // height of the box

void setup() {
  size(400, 400);
  background(random(255), random(255), random(255));
}

void draw() {
  // drawing the box every time
  rect(boxX, boxY, boxWidth, boxHeight);
}

void mousePressed() {
  println("Mouse button pressed!");
  background(random(255), random(255), random(255));
  if(mouseX > boxX && mouseX < boxX + boxWidth && boxY <= boxHeight) {
    println("Stopping the Loop!");
    noLoop(); // stops the draw command from happening
  }
}

Does it work?  Look at the noLoop() function.  This has stopped the draw command from working, but notice that pressing the button still generates text in the console?  The code still runs, it’s just not updating the screen!

Let’s turn everything back on again with the other click.


Example #3
Modify example#2 so that if you left click on the box, then the box disappears and random backgrounds also stop happening.  If you right click on the screen, then the program restarts.

// using the following variables for collision as well as drawing
int boxX = 0;  // x value of the box
int boxY = 0;  // y value of the box
int boxWidth = 50;  // width of the box
int boxHeight = 50;  // height of the box

void setup() {
  size(400, 400);
  background(random(255), random(255), random(255));
}

void draw() {
  // drawing the box everytime
  rect(boxX, boxY, boxWidth, boxHeight);
}

void mousePressed() {
  println("Mouse button pressed:" + mouseButton);
  if (mouseButton == LEFT) { //Only change background on a left click
    background(random(255), random(255), random(255));
    if (mouseX > boxX && mouseX < boxX + boxWidth && boxY <= boxHeight) {
      println("Stopping the Loop!");
      noLoop(); // stops the draw command from happening
    }
  }
  else if (mouseButton == RIGHT) {
    loop();
  }
}





Some other useful mouse functions and values we can use.  

mouseIsPressed
This is a variable that is true if the mouse is pressed, false if it isn’t.
Can be used to test if a mouse is still pressed (dragging an object)

mouseClicked()
Is called after a mouse is pressed and released, unlike mousePressed() which is only when it is first pressed.
To see the difference, change the mousePressed() in example 1 to mouseClicked()
Background colour won’t change now until you let go of the mouse button
Notice there is a problem with the right click.  It can depend on the browser, but there is no guarantee that the right click will work

mouseMoved()
Called when the mouse is moved and no button is being pressed
Change example 1 from mousePressed to mouseMoved to see what happens

mouseDragged()
Called when the mouse is moved and a button is being pressed
Change example 1 from mousePressed to mouseDragged to see what happens

mouseReleased()
Called when the mouse button is released

You can check the reference for more tools to use with the mouse.

All of these can combine to make some very nice interactive programs.


Questions:

1)	Write a program that randomly draws a circle of random colour and size anywhere on a screen whenever the left mouse button is pressed.  See an example here.  Test with mousePressed, mouseClicked and mouseDragged.  Use whichever function you like best.

	Save as mouse1 in your homework repo.

2)	Modify question 1 to clear the background whenever the right mouse button is pressed.
Save as mouse2 in your homework repo.


3)	Draw two boxes on the window, one on the left and one on the right.
	If the left one is clicked, display the words, “left one has been clicked” below the
Boxes (on the screen).
If the right one is clicked, display the words, “right one has been clicked” below the
Boxes.

Save as mouse3 in your homework repo.


4)	Create a drawing program on a window with your choice of size.  
Your drawing program must have a colour palette selector of the colours Red, Green, Blue, Black and White.  The user can change colour choice by clicking on the associated box.  Use a white background.
	An example is here.
	Challenge: Can you come up with a way in which we can change the pen size?

	Save as mouse4 in your homework repo.
