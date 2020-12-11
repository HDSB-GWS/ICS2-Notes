
void setup() {
  size(400, 400);
}


void draw() {

  for (int x=0; x< width; x+= 1) {
    
    if (x % 20 == 0) {
      circle(x, 200, 5);
    }else if (x % 17 == 0) {
      rect(x,200,5,5);
    }
  }
}
