//Set up global variables here


void setup() {
  size(400, 400);
  
  //Initialize = Give an intial value
  //xPosition = 200;
  //yPosition = 250;
  //faceSize = 1.5; 
  
}

void draw() {
  //faceSize = 0.25 + mouseY/200.0;
  //xPosition = mouseX/faceSize;
  //yPosition = mouseY/faceSize;
  
  background(220);
  
  //text(faceSize,50,50);
  drawCharacter(mouseX,mouseY,1);
  drawCharacter(50,150,1);
  drawCharacter(350,150,1);


  
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
  float xPosition = xPosIn;
  float yPosition = yPosIn;
  
  
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
  
}
