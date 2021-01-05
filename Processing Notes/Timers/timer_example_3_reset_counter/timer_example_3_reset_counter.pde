int currentTime;
int gameStartTime;

void setup() {
  size(300,300);
}


void draw() {
  background(0);
  currentTime = millis();
  //gameStartTime = currentTime;
  textSize(32);
  text((currentTime - gameStartTime)/1000,50,50);
}

void mouseClicked() {
  gameStartTime = millis();
}
