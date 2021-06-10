import ddf.minim.*;
Minim minim;

AudioPlayer Music_01;

void MUSIC()
{
  minim = new Minim(this);
  Music_01 = minim.loadFile("music/decent.mp3",256);
}

void PLAYLIST()
{
  Music_01.play();
  //Music_01.loop();
}
