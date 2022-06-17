private class Ball {
  
  private int xBall, yBall, diameter, xStart,yStart, xMove, yMove;
  private int  score1 = 0, score2 = 0, xSpeed, ySpeed;
  private Boolean xLeftBallGoal = false, xRightBallGoal = false;
  
 private Ball (float widthP, float heightP) {
   
    this.xBall = int(widthP*1/2); 
    this.yBall = int(heightP*1/2);
    xStart = xBall; 
    yStart = yBall;
    diameter = int(widthP*1/30); 
    this.xLeftBallGoal = false;
    this.xRightBallGoal = false;
   
    this.xSpeed = int ( random (widthP/widthP, widthP/widthP*5) );
    this.ySpeed = int ( random (heightP/heightP, heightP/heightP*5) );
    while (xSpeed>-2 && xSpeed<2) xSpeed = int(random( -3, 3));
    while (ySpeed>-2 && ySpeed<2) ySpeed = int(random( -3, 3));
    
    
  }
 
    public void ballDraw() {
    ellipse(xBall,yBall,diameter, diameter);
    bounceOffPaddle();
     ballMove();
     ballBounce();
     
  }// End draw
  
  
   private void ballMove() {
    xBall += xSpeed;
    yBall += ySpeed ;
  }//end move
  
  private void ballBounce() { 
    if ( xBall-diameter*1/2 < displayWidth*0 || xBall+diameter*1/2 > displayWidth ) xSpeed *= -1; //Net Bounce, will change
    if ( yBall-diameter*1/2 < displayHeight*0 || yBall+diameter*1/2 > displayHeight ) ySpeed *= -1; //Top and Bottom
  } // End ballBounce
  
  
  private void bounceOffPaddle() {
    if ((xBall >= paddles.xRightP - (diameter*1/2)) && ((yBall >= paddles.yRightP) && (yBall <= paddles.yRightP + paddles.paddleHeight))) {
      xSpeed *=-1;
    }
    if ((xBall <= paddles.xLeftP + (paddles.paddleWidth + (diameter*1/2)) && (yBall >= paddles.yLeftP) && (yBall <= paddles.yLeftP + paddles.paddleHeight))) {
      xSpeed *=-1;
    }
  } // End bounceOffPaddle
  


 private void score() {
    ballMove();
     ballBounce();
   
    if ( xBall < (displayWidth*0) + diameter || xBall > displayWidth - diameter ) {
      if ( xBall < (displayWidth*0) + diameter) {
        xLeftBallGoal = true;
        xBall = width*1/2;
        yBall = height*1/2;
         score1+= 10;
      }
       if ( xBall > displayWidth - diameter) {
        xRightBallGoal = true;
        xBall = width*1/2;
        yBall = height*1/2;
        score2+= 10;
      }
    }
    
    if(score1 == 100) {
      state=2;
    } else if(score2 == 100) {
      state=3;
    }
 }  
 
 
  Boolean leftBallGoalGetter() {
    return xLeftBallGoal;
  }
  Boolean rightBallGoalGetter() {
    return xRightBallGoal;
  }
    
}
