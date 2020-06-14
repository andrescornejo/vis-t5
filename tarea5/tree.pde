class Tree{
  float shrinkFactor = 0.0;
  int branchSize = 0;
  int strokeWeight = 0;
  
  Tree(float pShrink, int pSize, int pStroke){
    shrinkFactor = pShrink;
    branchSize = pSize;
    strokeWeight = pStroke;
  }
  
  void display(){
    strokeWeight(strokeWeight);
    stroke(0);
    fill(#ffffff);
    //// Start the tree from the bottom of the screen
    //translate(width/2,height);
    //Draw the initial line.
    line(0,0,0,-branchSize);
    // Move to the end of that line
    translate(0,-branchSize);
    addBranch(branchSize);
  }
  
  void addBranch(float size) {
    // Each branch will be 2/3rds the size of the previous one
    size *= shrinkFactor;
    
    // All recursive functions must have an exit condition!!!!
    // Here, ours is when the length of the branch is 2 pixels or less
    if (size > 2) {
      pushMatrix();    // Save the current state of transformation (i.e. where are we now)
      rotate(1);   // Rotate by theta
      line(0, 0, 0, -size);  // Draw the branch
      translate(0, -size); // Move to the end of the branch
      addBranch(size);       // Ok, now call myself to draw two new branches!!
      popMatrix();     // Whenever we get back here, we "pop" in order to restore the previous matrix state
      
      // Repeat the same thing, only branch off to the "left" this time!
      pushMatrix();
      rotate(-1);
      line(0, 0, 0, -size);
      translate(0, -size);
      addBranch(size);
      popMatrix();
    }
  }
}
