function setup() {
  createCanvas(500, 400);
  print("asd");  
}

var [xrot, yrot, t] = [350, 200, 1];

function draw() {
  background(225);
  
  // thing you move
  fill(0, 255, 0);
  ellipse(mouseX, mouseY, 50);
 
  // big wheel
  fill(255);
  ellipse(350, 250, 100);
  
  // weird moving line
  fill(0);
  strokeCap(ROUND);
  line(mouseX, mouseY, xrot+50, yrot+45);
  
  // make it spin
  xrot += Math.cos((PI/2) * t) * 8;
  yrot += Math.sin((PI/2) * t) * 8;
  t += 0.1;
}
