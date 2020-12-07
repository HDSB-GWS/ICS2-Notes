//Set up global variables here
float xPosition;
float yPosition;

void setup() {
  size(400, 400);
  
  //Initialize = Give an intial value
  xPosition = 200;
  yPosition = 250;
  
}

void draw() {
  background(220);
  noStroke();
  
  //Face
  fill(23,255,194);
  circle(xPosition,yPosition,250);
  
  //Eyes
  fill(0,100,100);
  circle(xPosition+50,yPosition-50,10);  //Left Eye
  circle(xPosition-50,yPosition-50,10);
  
  //Mouth
  fill(255,0,0);
  ellipse(200,300,100,50);
  
  /*
  //Eyebrows
  fill(0);
  rect(125,175,150,10);
  */
  
}
