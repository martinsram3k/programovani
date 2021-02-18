void fps() {
  textSize (30);
  fill(0);
  text("FPS: " + int(frameRate), 30, 30);
}

void keyPressed() {
  if (key=='š') {
    fps=true;
  }
  if (key=='3') {
    fps=true;
  }
}
