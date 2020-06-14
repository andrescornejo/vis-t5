/* Tarea 5 - Visualizacion de datos
 * Autor: Andres Cornejo 
 */

boolean DEBUG = true;

int d = 40;

float scaleFactor = 1.0;
float translateX = 0.0;
float translateY = 0.0;

float xOffset, yOffset;
float zoom = 1;
float angle = 0;

Tree visTree;

void setup(){
  size(1280,720);
  xOffset = width/2;
  yOffset = height;
  smooth();
  
  visTree = new Tree(0.66, 500, 50);
}

void draw(){
  background(#2c3d63);
  noStroke();
  
  pushMatrix();
  translate(translateX,translateY);
  scale(scaleFactor);
  
  rect(0, 0, 100, 100);
  rect(width-100, height-100, 100, 100);
  visTree.display();
  popMatrix();
  
  
  
  //fill(120);
  //ellipse(-200, 0, d, d);
  //fill(180);
  //ellipse(-100, 0, d, d);
  //fill(220);
  //ellipse(0, 0, d, d);
  //fill(180);
  //ellipse(100, 0, d, d);
  //fill(120);
  //ellipse(200, 0, d, d);
}
