// Project: DARKROOM | by LoubiTek | 2021

// CONFIGURACIÓN
void settings()
{
  size(W,H,ENGINE);
  smooth(AA);
}

 // CARGA
void LOAD()
{
  INFO();
  FONT();
  MUSIC();
  IMAGES();
}

 // SETUP
void setup()
{
  frameRate(FPS);
  background(BLACK);
  LOAD();
}

// DIBUJO 
void draw()
{
  PLAYLIST();
  BG();
  FPS_TEXT();
  PLAYER();
  TITLE();
}
