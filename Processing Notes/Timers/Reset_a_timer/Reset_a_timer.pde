int currentTime;
int startTime;


void setup() {
  size(600, 600);
  background(100);
}

void draw() {
  textSize(32);
   background(40);
  currentTime = millis();
  
  text("Current Time: "+currentTime,50,50);
  text("Start Time: "+startTime,50,100);
  text("Offset Time: "+(currentTime-startTime),50,150);
  
  if ((currentTime-startTime) >= 1000 ) {
    ellipse(200,200,20,20);
  }

}

void mouseClicked() {
  startTime = millis();
}
