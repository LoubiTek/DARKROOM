boolean Event = true; // EVENEMENT
int[] PLAYER_ONE = {W/2,H/2,32,64}; // JUGADOR UNO 
int[] PLAYER_TWO = {W/2-128,H/2,32,64}; // JUGADOR DOS
byte[] LIFE = {127,64,19,17}; // VIDA
float r = 0;
float L[] = {W,H/2,0,0};

// BACKGROUND
void BG()
{
  // Initialize the background black color and load image background.png
  background(BLACK);
  image(BG_IMG,0,0);
  
  // Create border white color
  stroke(WHITE);
  noFill();
  rect(0,0,W,H);
  
  // PLAY the EFFECT
  Effect_01.play();
  
  // TINT the image VFX
  tint(PINK);
  image(VFX_IMG,64,558,128,128);
  
  // CADRE RULE
  stroke(PINK);
  rect(260,554,800,164);
}

// PLAYERS
void PLAYER()
{
  // DRAW image and rectangle PLAYER ONE
  stroke(YELLOW);
  rect(PLAYER_ONE[0],PLAYER_ONE[1],PLAYER_ONE[2],PLAYER_ONE[3]);
  image(PLAYER_ONE_IMG,PLAYER_ONE[0],PLAYER_ONE[1],PLAYER_ONE[2],PLAYER_ONE[3]);
  
  // IF PLAYER ONE (W/2) >= ANCHURA or PLAYER ONE (W/2) <= 0
  if(PLAYER_ONE[0] >= W || PLAYER_ONE[0] <= 0)
  {
    PLAYER_ONE[0] = W/2; // REINITIALIZE the ANCHURA PLAYER ONE coordinate X
  }
  
  // IF PLAYER ONE (H/2) >= ALTURA or PLAYER ONE (H/2) <= 0
  if(PLAYER_ONE[1] >= H || PLAYER_ONE[1] <= 0)
  {
    PLAYER_ONE[1] = H/2; // REINITIALIZE the ALTURA PLAYER ONE coordinate Y
  }
  
  // DRAW image and rectangle PLAYER TWO
  stroke(PINK);
  rect(PLAYER_TWO[0],PLAYER_TWO[1],PLAYER_TWO[2],PLAYER_TWO[3]);
  image(PLAYER_TWO_IMG,PLAYER_TWO[0],PLAYER_TWO[1],PLAYER_TWO[2],PLAYER_TWO[3]);
  
  /*
  // IF PLAYER TWO (H/2) >= ALTURA
  if(PLAYER_TWO[1] >= H)
  {PLAYER_TWO[1] = W/2-128;} // REINITIALIZE the PLAYER TWO coordinate X
  
  // DRAW image and rectangle VIDA
  for(byte i = 0; i<2; i++)
  {
    stroke(255);
    rect(128+LIFE[0]*i,LIFE[1],LIFE[2],LIFE[3]);
    image(LIFE_IMG,128+LIFE[0]*i,LIFE[1],LIFE[2],LIFE[3]);
  }*/
}

// SWORD
void SWORD()
{
  // DRAW image and rectangle SWORD
  translate(W/2,H/2); // ORIGIN (x,y) = CENTER
  
  r -= 1; // INCREMENT value -1;
  rotate(radians(r)); // ROTATION RADIANS r =-1;
  
  // WEAPON_SWORD
  stroke(0,255,0);
  rect(0,0,15,44);
  image(SWORD_IMG,0,0,15,44);
}

// KeyPressed
void keyPressed()
{
  // IF KEYPRESSED == EVENT (true)
  if (keyPressed == Event)
  {
    if (key == CODED)
    {
      if (keyCode == RIGHT) // MOVE RIGHT
      {
        PLAYER_ONE[0] = PLAYER_ONE[0] + PLAYER_ONE[2]; // PLAYER ONE (W/2) = PLAYER ONE (W/2) + PLAYER ONE (64)
      }
      if (keyCode == UP) // MOVE UP
      {
        PLAYER_ONE[1] = PLAYER_ONE[1] - PLAYER_ONE[2]; // PLAYER ONE (H/2) = PLAYER ONE (H/2) - PLAYER ONE (64)
      }
      if (keyCode == DOWN) // MOVE DOWN
      {
        PLAYER_ONE[1] = PLAYER_ONE[1] + PLAYER_ONE[2]; // PLAYER ONE (H/2) = PLAYER ONE (H/2) + PLAYER ONE (64)
      }
      if (keyCode == LEFT) // MOVE LEFT
      {
        PLAYER_ONE[0] = PLAYER_ONE[0] - PLAYER_ONE[2]; // PLAYER ONE (W/2) = PLAYER ONE (W/2) - PLAYER ONE (64)
      }
      if (keyCode == ESC) // EXIT
      {
        exit();
      }
    }
  }
}
