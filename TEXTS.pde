PFont font;

String FRAMERATE = "FPS: "+FPS;

void FONT()
{
  font = createFont("font/mod_gothic.ttf",72);
}

void FPS_TEXT()
{
  textFont(font);
  textSize(48);
  text(FRAMERATE,8,32);
}

// TITULO
void TITLE() 
{
  textSize(72);
  text("DARKROOM",W/2-64,72);
}
