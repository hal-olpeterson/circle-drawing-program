boolean drawingEllipse = false;

int lastClick = 0;
void setup() {
  size (1000, 1000);
  smooth();
  background (200);
  rect(100, 100, 100, 100);
}
void draw() {
  if (mousePressed) {
    if ((mouseX > 100)&&(mouseX < 200)&& (mouseY > 100)&&(mouseY < 200) && millis() - lastClick > 400) {
      drawingEllipse = !drawingEllipse;
      lastClick = millis();
    }
  }
  if(drawingEllipse && mousePressed && millis() - lastClick > 400) {
    ellipse (mouseX, mouseY, 100, 100);
  }
  
  if(drawingEllipse) fill(0);
  rect(100, 100, 100, 100);
  fill(255);
}