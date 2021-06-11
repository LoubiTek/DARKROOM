import ddf.minim.*;
Minim minim;

AudioPlayer Music_01;
AudioPlayer Effect_01;

// MUSICA
void MUSIC()
{
  minim = new Minim(this);
  // LOADING the MUSIC song and EFFECT sound 
  Music_01 = minim.loadFile("music/decent.mp3",256);
  Effect_01 = minim.loadFile("effect/effect.mp3",256);
}

// PLAYLIST
void PLAYLIST()
{
  // PLAY the MUSIC FILE
  Music_01.play();
  //Music_01.rewind();
  //Music_01.loop();
}
