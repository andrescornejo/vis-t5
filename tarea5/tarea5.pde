/* Tarea 5 - Visualizacion de datos
 * Autor: Andres Cornejo 
 */

boolean DEBUG = true;

int d = 40;

float scaleFactor = 1.0;
float translateX = 0.0;
float translateY = 0.0;

Table data;
TableRow currentRow;
BubbleTree tree;

void setup(){
  size(1400,1400);
  smooth();
  data = loadTable("data.csv", "header");
}

void draw(){
  background(#2c3d63);
  noStroke();
  pushMatrix();
  translate(translateX,translateY);
  scale(scaleFactor);
  rect(0, 0, 100, 100);
  rect(width-100, height-100, 100, 100);
  popMatrix();
}
