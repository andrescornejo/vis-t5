/* Tarea 5 - Visualizacion de datos
 * Autor: Andres Cornejo 
 */

boolean DEBUG = true;

int d = 40;
int dWidth = 1280;
int dHeight = 720;

float xOffset, yOffset;
float zoom = 1;
float angle = 0;

void setup(){
  size(1280,720);
  xOffset = width/2;
  yOffset = height/2;
  smooth();
  noStroke();
}

void draw(){
  background(#2c3d63);
  translate(xOffset, yOffset);
  scale(zoom);
  rotate(angle);
  
  fill(120);
  ellipse(-200, 0, d, d);
  fill(180);
  ellipse(-100, 0, d, d);
  fill(220);
  ellipse(0, 0, d, d);
  fill(180);
  ellipse(100, 0, d, d);
  fill(120);
  ellipse(200, 0, d, d);
}
