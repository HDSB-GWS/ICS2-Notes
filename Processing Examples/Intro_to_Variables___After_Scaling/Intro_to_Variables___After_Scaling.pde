//Set up global variables here
float xPosition;
float yPosition;
float faceSize;

void setup() {
  size(400, 400);
  
  //Initialize = Give an intial value
  xPosition = 200;
  yPosition = 250;
  faceSize = 1.5; 
  
}

void draw() {
  faceSize = 0.25 + mouseY/200.0;
  xPosition = mouseX/faceSize;
  yPosition = mouseY/faceSize;
  
  background(220);
  
  text(faceSize,50,50);

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
