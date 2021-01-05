float circleCenterX;
float circleCenterY;
float circleRadius;
color circleFill;
boolean circleVisible;

void setup() {
  size(300, 300);
  circleCenterX = width/2;
  circleCenterY = height/2;
  circleRadius = 100;
  circleFill = color(0, 0, 255);
  circleVisible = true;
}

void draw() {
  background(0);

  if (circleVisible == true) {
    fill(circleFill);
    ellipse(circleCenterX, circleCenterY, circleRadius*2, circleRadius*2);
  }
}

void mouseClicked() {

  if (dist(mouseX, mouseY, circleCenterX, circleCenterY) < circleRadius) {
    //circleFill = color(255, 0, 0);
    circleVisible = false;
  } else {
    //circleFill = color(0, 255, 0);
  }
}

void keyPressed() {
  circleVisible = true;
}
