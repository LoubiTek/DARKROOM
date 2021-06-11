PFont font;

String FRAMERATE = "FPS: "+FPS; // DRAW the CUADRO POR SEGUNDO
String RULE_KEY = "Move with z,q,s,d"; // DRAW the RULE MOVEMENT

// FONT
void FONT()
{
  // CREATE and LOAD font MOD_GOTHIC.ttf
  font = createFont("font/mod_gothic.ttf",72);
}

// FPS TEXT
void FPS_TEXT()
{
  textFont(font);
  textSize(48);
  text(FRAMERATE,8,32);
}

void RULE()
{
  text(RULE_KEY,320,640);
}

// TITULO
void TITLE() 
{
  textSize(72);
  text("DARKROOM",W/2-64,72);
}
