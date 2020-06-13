//General keybinds
void keyPressed(){
  if(key == CODED){
    if(keyCode == RIGHT){
      angle += .05;
    } else if(keyCode == LEFT){
      angle -= .05;
    }
  }
  if (key == ' '){
    angle = 0;
    zoom = 1;
    xOffset = width/2;
    yOffset = height/2;
  }
}

//Handles moving around the sketch with the mouse.
void mouseDragged(){
  xOffset = xOffset + (mouseX - pmouseX);
  yOffset = yOffset + (mouseY - pmouseY);
}


//Changes the zoom factor with the mousewheel.
void mouseWheel(MouseEvent event){
  if(event.getCount() > 0)
    setZoomLvl(-0.1);
    
  else if(event.getCount() < 0)
    setZoomLvl(0.1);
  
  if(DEBUG)
    println("Zoom level: " + zoom);
}

//Validates that zoom level can't reach negative values
//and adjusts the values accordingly.
void setZoomLvl(float lvl){
  if(zoom + lvl <= 0)
    zoom = 0.1;
    
  else
    zoom += lvl;
}
