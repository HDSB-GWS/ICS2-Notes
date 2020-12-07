
void setup() {
  size(200, 200);  // sets the size of the window
}

void draw() {
  background(255, 0, 0);       // setting background colour
  
  //stroke(3);
  PFont font;
// The font must be located in the sketch's 
// "data" directory to load successfully
font = loadFont("LetterGothicStd-32.vlw");
textFont(font, 32);
  
  

  text("Hello"+mouseX+" "+mouseY, 50, 50);       // display the word hello at (50, 50)
  
}
