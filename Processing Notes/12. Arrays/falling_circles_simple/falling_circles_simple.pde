float[] circleY = {50, 100, 150, 200, 250};

void setup() {
  size(300, 300);
}

void draw() {
  background(50);

  for (int i = 0; i < 5; i+=1) {
    float circleX = 50 * (i + 1);
    ellipse(circleX, circleY[i], 25, 25);

    circleY[i] +=1;

    if (circleY[i] > height) {
      circleY[i] = 0;
    }
  }
}
