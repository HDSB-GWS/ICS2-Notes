//Don't forget to use the p5.js Reference
//https://p5js.org/reference/

//Mr Brooks,
//the date,
//Variable Example Code for Video,
//project (teacher’s) name, and
//a brief description of what the program does.


int bobXLocation;   //Controls Bob's x location
int browAngle;      //The angle of Bob's eyebrows
int browDirection;  //The direction to move Bob's eyebrow
int joeXLocation;   //Joe's x location on the screen
int joeSpeed;       //Joes speed to move around the screen


void setup() {
  size(500, 400);
  bobXLocation = 200;
  browAngle = 0;
  browDirection =-1;
  joeXLocation = 200;
  joeSpeed = 2;


  //Set the angle of rotations to be DEGREES
  //angleMode(DEGREES);
}

void draw() {
  background(220);


  
  //Change Bob's Location
  //bobXLocation = bobXLocation + 1;
  if (bobXLocation > 600) { 
    bobXLocation =-100;
  }


  //Animate Bob's eyebrow
  if (browAngle <= -31) {
    browDirection = 1;
  }else if (browAngle >= 1) {
    browDirection = -1;
  }

  browAngle = browAngle + browDirection;

  //Draw Bob
  drawCharacter(bobXLocation,200,100,browAngle);

  //Draw Joe 
  joeXLocation = joeXLocation - joeSpeed;

  if ((joeXLocation >450) || (joeXLocation < 100)) {
    joeSpeed = -joeSpeed;
  }


  drawCharacter(joeXLocation,300,50,-10);

  

    
  
}

/*
* drawCharacter
* Draws the character on the screen
*/
void drawCharacter(int xPositionIn, int yPositionIn, int sizeIn, int browAngle) {
  int xPosition = xPositionIn;
  int yPosition = yPositionIn;

  int size = sizeIn;
  int eyeSize =  size * 20/250;

  
  noStroke();

  // Face
  fill(23, 255, 200);
  ellipse(xPosition,yPosition,size,size);

  //Eyes
  fill(0,100,100);
  ellipse(xPosition+size*50/250  ,yPosition- size*50/250, eyeSize, eyeSize);
  ellipse(xPosition- size*50/250 ,yPosition- size*50/250 ,eyeSize, eyeSize);

  //Mouth
  fill(255, 0, 0);
  ellipse(xPosition,yPosition+ size*50/250, size* 100/250 ,size*50/250);

  
  //Eyebrows
  fill(0, 0, 0);
  
  //Left eyebrow
  rect(xPosition - size*75/250 ,yPosition- size*75/250 ,size*150/500,size*10/250);

  //Right Eyebrow
  translate(xPosition  ,yPosition- size*75/250);
  rotate(browAngle);
  //rect(0  ,0 ,size*150/500,size*10/250);
  stroke(10);
  line(0,0,50,0);
  //noStroke();
  
  resetMatrix();

  
  /*//double eyebrows
  //left eyebrow
  rect(xPosition - size*75/250 ,yPosition- size*75/250 ,size*150/500,size*10/250);
  //right eyebrow
  rect(xPosition  ,yPosition- size*75/250 ,size*150/500,size*10/250);
  //*/

  //Oringinal double eyebrow  
  //rect(xPosition - size*75/250 ,yPosition- size*75/250 ,size*150/250,size*10/250);

  
  
}
