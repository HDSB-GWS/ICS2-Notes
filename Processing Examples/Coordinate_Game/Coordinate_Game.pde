//Based off code by L. Hines https://editor.p5js.org/lhines/sketches/7bMbIzycS

void setup() {
  size(400, 400);
}

long x = Math.round(Math.random() * 370);
long y = Math.round(Math.random() * 370);
String output = "";
int correct = 0;
int streak = 0;
int startTime = millis();
int bestScore = 0;
String bestString = "";

void draw() {
  background(170,255,51);
  fill(0);
  text("Click on the coordinate:", 50, 200);
  text("(" + x + ", " + y + ")", 50, 220);
  text(output, 50, 240);
  text("Correct: "+ correct, 300, 20);
  text("Streak:  "+ streak, 300, 40);
  text("Best: "+ bestString, 300, 60);
}

void mousePressed() {
  float k = abs(dist(x, y, mouseX, mouseY));
  //console.log(k)
  if (k < 100) {
    output = "Great job!";
    x = Math.round(Math.random() * 370);
    y = Math.round(Math.random() * 370);
    correct++;
    streak++;
  } else {
    output = "Try again!";
    if (streak > bestScore) {
      bestScore = streak;
      bestString = streak +" correct \r\n               in\r\n           " + (millis()-startTime)/1000 + " sec"; 
      startTime = millis();
    }
    streak = 0;
  }
}
