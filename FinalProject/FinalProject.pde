//images
PImage start; 
PImage guide;
PImage p1wins;
PImage p2wins;

int state = 0;

Net net;
Ball ball;
Paddle paddles;

void setup() {
  //background(0);
  fullScreen();
  smooth();
 net = new Net();
 ball = new Ball(displayWidth,displayHeight);
paddles = new Paddle(displayWidth, displayHeight);
 
  
}//End setup()


void keyPressed() {
   if ( key == CODED && key == 'Q' || key == 'q' ) paddles.setLeftUp();
   if ( key == CODED && key == 'A' || key == 'a' ) paddles.setLeftDown();
   if ( key == CODED && key == 'O' || key == 'o' ) paddles.setRightUp();
   if ( key == CODED && key == 'L' || key == 'l' ) paddles.setRightDown();

}//End keyPressed()


void keyReleased() {
  if (( key == CODED && key == 'Q' || key == 'q' ) || ( key == CODED && key == 'A' || key == 'a' ))paddles.setLeftStop();
  if (( key == CODED && key == 'O' || key == 'o' ) || ( key == CODED && key == 'L' || key == 'l' ))paddles.setRightStop(); 
}

void mousePressed() {
 state = 1;
}//End mousePressed()


void draw(){
  background(0);
  //net.displayNet();
  
  if(state == 0) {
    start = loadImage("data/pong.gif");
    tint (random(255), random(255),random(255));
    image(start,0,0,displayWidth,displayHeight);
    guide = loadImage("data/main.gif");
    noTint();
    image(guide,0,0,displayWidth,displayHeight);
  }
  else if(state == 1) {
    net.displayNet();
    ball.ballDraw();
    paddles.paddleDraw();
    textSize(20);
    text ("Player2: " + ball.score2, displayWidth/4,displayHeight/9);
    text ("Player1: " + ball.score1, displayWidth/1.35,displayHeight/9);
    ball.score();
  }
  
    
  if (state == 2) {
    p1wins = loadImage("data/player1.gif");
    tint (random(255), random(255),random(255));
    image(p1wins,0,0,displayWidth,displayHeight);
  } else if (state == 3) {
    p2wins = loadImage("data/player2.gif");
    tint (random(255), random(255),random(255));
    image(p2wins,0,0,displayWidth,displayHeight);
  }

  state = constrain(state, 0, 3);
 
}//End draw()
