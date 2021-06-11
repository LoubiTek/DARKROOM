int W = 1280; // ANCHURA
int H = 720; // ALTURA
byte FPS = 60; // CUADRO POR SEGUNDO
String ENGINE = P3D; // MOTOR
byte AA = 0;

void INFO() // INFORMATION
{
  println(W+"*"+H+":"+FPS+":FPS","ENGINE:"+ENGINE); // 1280*720:60 P3D OPENGL
}
