int numberOfCircles = 100;

float[] circleX = new float[numberOfCircles];
float[] circleY = new float[numberOfCircles];
float[] circleSpeed = new float[numberOfCircles];

int circlesToDisplay =1;
int score =0;


void setup() {
  size(300, 300);

  for (int i = 0; i < circleX.length; i += 1) {
    circleX[i] = random(300);
    circleY[i] = random(300);
    circleSpeed[i] = 1;
  }
}

void draw() {
  background(50);

  for (int i = 0; i < circlesToDisplay; i +=1) {  // i=0 , i=1
    ellipse(circleX[i], circleY[i], 25, 25);

    circleY[i] += circleSpeed[i];    

    if (circleY[i] > height) {
      circleY[i] = 0;
    }
  }



  textSize(32);
  text(score, 50, 50);
}


void mouseClicked() {
  score += 1;

  if (score % 10 == 0 && circlesToDisplay < circleY.length) { 
    circlesToDisplay += 1;
  }
}
