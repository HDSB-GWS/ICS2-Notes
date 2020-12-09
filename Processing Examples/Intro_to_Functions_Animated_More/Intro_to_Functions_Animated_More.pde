//Set up global variables here
float mrBigXPosition;
float mrSmallYPosition;
float mrSmallSpeed;
float eyeBrowAngle;

void setup() {
  size(400, 400);
  mrBigXPosition = 50;
  mrSmallYPosition = 50;
  mrSmallSpeed = 1;
  eyeBrowAngle= 0;
}

void draw() {

  
  background(220);
  
  eyeBrowAngle = eyeBrowAngle+1;
  drawCharacter(350,50,0.05, -eyeBrowAngle); //small
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
void drawCharacter(float xPosIn, float yPosIn, float sizeIn, float eyebrowAngleIn) {
  
  float faceSize;
  if (sizeIn <= 0) {
    faceSize = 1;
  }else {
    faceSize = sizeIn;
  }
  
  
  float xPosition = xPosIn/faceSize;
  float yPosition = yPosIn/faceSize;
  
  float eyebrowAngle;
  if (eyebrowAngleIn < -90) {
    eyebrowAngle = 0;
  }else {
   eyebrowAngle = eyebrowAngleIn;
  }
  
  
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
  rect(xPosition-75,yPosition-75,75,10);
  
  translate(xPosition, yPosition-75);
  rotate(radians(eyebrowAngle));
  rect(0,0,75,10);
  
  resetMatrix();
  
}
