void setup() {
  size(400, 400);
}

void draw() {
  background(220);
  noStroke();
  
  //Face
  fill(23,255,194);
  circle(200,250,250);
  
  //Eyes
  fill(0,100,100);
  circle(250,200,10);
  circle(150,200,10);
  
  //Mouth
  fill(255,0,0);
  ellipse(200,300,100,50);
  
  /*
  //Eyebrows
  fill(0);
  rect(125,175,150,10);
  */
  
}
