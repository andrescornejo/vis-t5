//General keybinds
void keyPressed(){
  if(key == CODED){
    if(keyCode == RIGHT){
      angle += .05;
    } else if(keyCode == LEFT){
      angle -= .05;
    }
  }
  if (key == 'r') {
      scaleFactor = 1;
      translateX = 0.0;
      translateY = 0.0;
  }
}

void mouseDragged(MouseEvent e) {
    translateX += mouseX - pmouseX;
    translateY += mouseY - pmouseY;
}

void mouseWheel(MouseEvent e) {
    translateX -= mouseX;
    translateY -= mouseY;
    float delta = e.getCount() < 0 ? 1.05 : e.getCount() > 0 ? 1.0/1.05 : 1.0;
    scaleFactor *= delta;
    translateX *= delta;
    translateY *= delta;
    translateX += mouseX;
    translateY += mouseY;
}
