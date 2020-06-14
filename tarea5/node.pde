class Node{
  String type; //Column name from csv.
  String data; //String data, depending on the type.
  int cases; //Amount of cases, depending on the type.
  ArrayList<Node> children;
  int xPos, yPos, diameter;
  
  Node(){ }
  
  Node(String _type, String _data, int _cases,
        ArrayList<Node> _children, int _x, int _y,
        int _diameter){
    type = _type;
    data = _data;
    cases = _cases;
    children = _children;
    xPos = _x;
    yPos = _y;
    diameter = _diameter;
  }
  
  
}
