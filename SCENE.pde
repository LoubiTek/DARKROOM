boolean Event = true;
int[] PLAYER = {W/2,H/2,32,64}; // JUGADOR 
int[] ENEMY = {W/2-128,64,32}; // ENEMIGO

void BG()
{
  background(BLACK);
  image(BG_IMG,0,0);
  stroke(WHITE);
  noFill();
  rect(0,0,W,H);
}

void PLAYER()
{
  stroke(YELLOW);
  rect(PLAYER[0],PLAYER[1],PLAYER[2],PLAYER[3]);
  image(PLAYER_IMG,PLAYER[0],PLAYER[1],PLAYER[2],PLAYER[3]);
  
  if(PLAYER[0] >= W || PLAYER[0] <= 0)
  {
    PLAYER[0] = W/2;
  }
  
  if(PLAYER[1] >= H || PLAYER[1] <= 0)
  {
    PLAYER[1] = H/2;
  }
  
  stroke(PINK);
  rect(ENEMY[0],ENEMY[1],ENEMY[2],ENEMY[2]);
}

// KeyPressed
void keyPressed()
{
  if (keyPressed == Event)
  {
    if (key == CODED)
    {
      if (keyCode == RIGHT)
      {
        PLAYER[0] = PLAYER[0] + PLAYER[2];
      }
      if (keyCode == UP)
      {
        PLAYER[1] = PLAYER[1] - PLAYER[2];
      }
      if (keyCode == DOWN)
      {
        PLAYER[1] = PLAYER[1] + PLAYER[2];
      }
      if (keyCode == LEFT)
      {
        PLAYER[0] = PLAYER[0] - PLAYER[2];
      }
      if (keyCode == ESC)
      {
        exit();
      }
    }
  }
}
