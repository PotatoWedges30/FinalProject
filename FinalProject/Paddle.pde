private class Paddle {
  private int xRightP, yRightP, xLeftP, yLeftP, paddleWidth, paddleHeight;
   private int rightPaddleSpeed = 4, leftPaddleSpeed = 4; 
  private Boolean leftUp = false, leftDown = false, leftStop = false, rightUp = false, rightDown = false, rightStop = false;
  
  private Paddle(float widthParameter, float heightParameter) {
    paddleWidth = int(widthParameter*1/55);
    xLeftP = int(widthParameter*1/40); 
    xRightP = int(widthParameter*39/40)- paddleWidth;
    paddleHeight = int (heightParameter*1/4);
    this.yLeftP = int(heightParameter*1/2) - paddleHeight*1/2;
    this.yRightP = yLeftP;
    
    //Variables to move the paddle
    //this.leftUp = false;
    //this.leftDown = false;
    //this.leftStop = false;
    //this.rightUp = false;
    //this.rightDown = false;
    //this.rightStop = false;
    
   
  }
  
  
 public void paddleDraw() {
    rightPaddle();
    leftPaddle();
  }
  
 private  void rightPaddle() {
    //fill(255);
    rect(xRightP, yRightP,paddleWidth, paddleHeight);
      move() ;
  }
  
 private  void leftPaddle() {
   // fill(255);
    rect(xLeftP, yLeftP, paddleWidth, paddleHeight);
     move();
  }
  
  
   private void move() {
   if ( leftUp == true ) {
      yLeftP -= leftPaddleSpeed;
    }
    if (leftDown == true) {
      yLeftP += leftPaddleSpeed;
    }
    if(rightUp == true) {
       yRightP -= rightPaddleSpeed;
    }
    if(rightDown == true) {
       yRightP += rightPaddleSpeed;
    }
     if (leftStop == true) {
      yLeftP += 0;
    }  
    if (rightStop == true) {
      yRightP += 0;
    } 
    
    
     if (leftUp  == true) {
      yLeftP = max (0, yLeftP-2*2);  
    }
    if (leftDown == true) {
      yLeftP = min (displayHeight-paddleHeight, yLeftP+2*2);  
    }
    if (rightUp == true) {
      yRightP = max (0,yRightP-2*2);  
    }
    if (rightDown == true) {
      yRightP = min (displayHeight-paddleHeight, yRightP+2*2);  
    }
    
  }
  
 public void setLeftUp(){
    leftUp = true;
    leftDown = false;
  }
  public void setLeftDown() {
    leftDown = true;
    leftUp = false;
  }
  public void setRightUp() {
    rightUp = true;
    rightDown = false;
  }
  public void setRightDown() {
    rightDown = true;
    rightUp = false;
  }
  public void setLeftStop() {
    leftStop = true;
    leftDown = false;
    leftUp = false;
  }
  public void setRightStop() {
    rightStop = true;
    rightDown = false;
    rightUp = false;
  }
  
} // End paddle class
