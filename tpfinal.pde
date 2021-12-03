// tp5 | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

// Magalí Luz Ibañez 88140/8
// Angela Calizaya Villamonte 88298/2

// "El ingrediente misterioso"

// Link: https://youtu.be/EpNQFRZtX2M

Aventura aventura;

void setup() {
  size(800, 400);
  aventura = new Aventura();
}

void draw() {
  aventura.dibujar();
}

void mousePressed() {
  aventura.click();
}

void keyPressed() {
  aventura.mover();
}
