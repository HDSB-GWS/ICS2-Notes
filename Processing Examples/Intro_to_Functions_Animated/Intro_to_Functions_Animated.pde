//Set up global variables here
float mrBigXPosition;
float mrSmallYPosition;
float mrSmallSpeed;

void setup() {
  size(400, 400);
  mrBigXPosition = 50;
  mrSmallYPosition = 50;
  mrSmallSpeed = 1;
}

void draw() {

  
  background(220);
  
  mrBigXPosition = mrBigXPosition + 5;
  
  if (mrBigXPosition >= 500) {
    mrBigXPosition = -100;
    
  }
  
  drawCharacter(mrBigXPosition,150,0.5);  //big
  
  
  mrSmallYPosition = mrSmallYPosition + mrSmallSpeed;
  
  if ((mrSmallYPosition >= 350) || (mrSmallYPosition <= 50)) {
    mrSmallSpeed = mrSmallSpeed* -1;
  }
  
  drawCharacter(350,mrSmallYPosition,0.25); //small
  //drawCharacter(mouseX,mouseY,0.5);


  
}

/*
This function draws the angry character to the screen

Returns: none

Parameters:
xPostIn:  float - x positition of the character drawn to screen
yPostIn:  float - y positition of the character drawn to screen
sizeIn:   float - the size of the character on the screen
*/
void drawCharacter(float xPosIn, float yPosIn, float sizeIn) {
  
  float faceSize = sizeIn;
  float xPosition = xPosIn/faceSize;
  float yPosition = yPosIn/faceSize;
  
  
  scale(faceSize);
  noStroke();
  
  //Face
  fill(23,255,194);
  circle(xPosition,yPosition,250);
  
  //Eyes
  fill(0,100,100);
  circle(xPosition+50,yPosition-50,10);  
  circle(xPosition-50,yPosition-50,10);  //Left Eye
  
  //Mouth
  fill(255,0,0);
  ellipse(xPosition,yPosition+50,100,50);
  
  
  //Eyebrows
  fill(0);
  rect(xPosition-75,yPosition-75,150,10);
  resetMatrix();
  
}
