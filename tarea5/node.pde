class Node{
  String type; //Column name from csv.
  String data; //String data, depending on the type.
  int cases; //Amount of cases, depending on the type.
  ArrayList<Node> children = new ArrayList<Node>();
  int xPos, yPos, diameter;
  boolean isRoot = false;
  
  Node(){ }
  
  Node(String _type, String _data, int _cases,
        int _x, int _y, int _diameter, boolean _ir){
    type = _type;
    data = _data;
    cases = _cases;
    xPos = _x;
    yPos = _y;
    diameter = _diameter;
    isRoot = _ir;
  }
  
  
}
