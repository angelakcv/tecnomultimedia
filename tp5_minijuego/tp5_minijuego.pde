
Dana d;
Fuego f;

void setup() {
  size (800, 400);

  d = new Dana(width/2, 300, 100);
  f = new Fuego(width/4, 100, 30);
}

void draw() {
  background (200);

  d.dibujar();
  f.dibujar();
}

void keyPressed() {
  d.moverI();
  d.moverD();
}
