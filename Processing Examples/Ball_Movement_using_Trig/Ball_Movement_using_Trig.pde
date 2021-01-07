float ballX, ballY, ballXSpeed, ballYSpeed, ballAngle;
//based on https://www.khanacademy.org/science/high-school-physics/two-dimensional-motion-2/analyzing-vectors-using-trigonometry/a/2d-kinematics-vectors-analytical-ap1

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
