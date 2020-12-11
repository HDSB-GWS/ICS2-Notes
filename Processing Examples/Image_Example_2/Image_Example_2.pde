//Global Variables
PImage webImg;

void setup() {
  size(200,200);
  String url = "https://processing.org/img/processing-web.png";
  // Load image from a web server
  webImg = loadImage(url, "png");
}

void draw() {
  background(0);
  image(webImg, 0, 0);
}
