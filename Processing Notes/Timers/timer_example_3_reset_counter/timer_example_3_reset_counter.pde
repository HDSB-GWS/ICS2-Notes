int currentTime;
int gameStartTime;

void setup() {
  size(300,300);
}


void draw() {
  background(0);
  //Adjust for the later start time by subtracting the gameStartTime
  currentTime = millis() - gameStartTime;
  
  textSize(32);
  text(currentTime/1000,50,50);
}

void mouseClicked() {
  gameStartTime = millis();
}
