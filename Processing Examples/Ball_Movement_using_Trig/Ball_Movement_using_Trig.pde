float ballX, ballY, ballXSpeed, ballYSpeed, ballAngle;


void setup() {
  size(200,200);
  ballX = 100;
  ballY = 100;
  
  ballAngle = random(360);
  
  ballXSpeed = sin(radians(ballAngle));
  ballYSpeed = cos(radians(ballAngle));
}

void draw() {
  background(0);
  ballX = ballX + ballXSpeed;
  ballY = ballY + ballYSpeed;
  
  circle(ballX,ballY, 10);
  
}

void mouseClicked() {
 ballXSpeed =ballXSpeed * -1;  
}
