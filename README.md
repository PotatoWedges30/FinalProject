# FinalProject

CS30 Final Project - Pong

**Purpose of Program**
- To create a working pong game in Java.

**Description of Program**
- The Pong game can be played by two players and each player needs to control a paddle. There is a ball that is placed at the middle of the screen and it moves towards one of the players. When the player misses hitting the ball with the paddle, the other player gets a point. The player who reaches the winning score 100 first wins the game.


MAIN Program:
- The PImage class is used to store images
- Declares the Game Objects
- A Global variable is declared(int state).
 1. Void setup():
 - fullScreen():
   -  Runs the code at the full dimensions of the screen currently.
 -  Declares the Game Objects
2. void keyPressed():
 - Called whenever a key is pressed.
    - The paddles are controlled with the keys of the keyboard:
      - For the first player, the O and L keys are used to move the left paddle up and down.
       - For the second player, the Q and A keys are used to move the left paddle up and down.
3. void keyReleased():
   -  Called whenever the keys are released.
4. void mousePressed():
   - the state variable is set to 1.
5. Void draw():
  - Background is set to 0(black background).
  - The If statement checks If state variable is equalled to 0 and if it is, the start image is displayed along with instruction on how to move the paddles.
   -  The else If statement checks if state variable is equalled to 1 and if it is, it takes the player to the next screen where the game is played.

 - The If statement checks If state variable is equalled to 2 and if it is, the "player 1 wins" image is displayed on the next screen.
  - The else If statement checks If state variable is equalled to 3 and if it is, the "player 2 wins" image is displayed on the next screen.


Ball Class:
 - Ball class that draws the ball, adds to the score and also check its collision with the paddles.

The Net Class:
 - Net class that draws the net in the middle.

 Paddles Class:
 - Paddle class that draws the paddles and also sets the paddle speed.

**Instructions On How To Use The Program:**
- The start image will appear with Instructions on how to move the paddles.
 - Player must click on the start image in order for the game to begin.
 - It's a two player game, and the first person to score 100
 is the winner.
- Player 1 paddle key controls:
  - "Q" or "q" ~ key moves the paddle up.
  - "A" or "a" ~ key moves the paddle down.
- Player 2 paddle key controls:
  - "O" or "o" ~ key moves the paddle up.
  - "L" or "l" ~ key moves the paddle down.
