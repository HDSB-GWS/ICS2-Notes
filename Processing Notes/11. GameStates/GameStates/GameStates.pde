
String gameState;

void setup() {
  size(400,400);
  
  gameState = "start screen";
}


void draw() {
  
  if (gameState == "start screen") {
    background(0,255,0);
    fill(0);
    text("Click the mouse to START!", 100,100);
  }
  else if (gameState == "red screen") {
    background(255,0,0);
  }
  else if (gameState == "blue screen") {
    background(0,0,255);
  }
  
}

void mouseReleased() {
  if (gameState == "start screen") {
    gameState = "red screen";
  }
  else if (gameState == "red screen") {
    gameState = "blue screen";
  }
}
