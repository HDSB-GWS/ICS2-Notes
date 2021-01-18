int xPos, yPos;
String gameState;

void setup() 
{
  size(300, 300);
  gameState = "start screen";
}


void draw() 
{
  //do whatever you need to do
  if (gameState == "start screen") 
  {
    background(255, 0, 0);
  } else if (gameState == "intialize") 
  {
    background(0, 255, 0);
    xPos = 50;
    yPos = 50;
    gameState = "play game";
  } else if (gameState == "play game") 
  {
    background(0, 0, 255);
    xPos += 1;
    circle(xPos, yPos, 50);
  }
}

void mouseClicked() 
{
  if (mouseButton == LEFT) {
    gameState = "intialize";
  } else if (mouseButton ==RIGHT) 
  {
    gameState = "start screen";
  }
}



/*

 else if (gameState == "intialize") 
 {
 background(0,255,0);
 xPos = 50;
 yPos = 50;
 gameState = "play game";
 
 
 }
 
 
 */
