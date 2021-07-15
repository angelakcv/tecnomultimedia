//https://youtu.be/h_A9eoysV58

float xc, yc, diam;
int c;
color co;
void setup() {
  size(500, 500);
  surface.setLocation (700, 150);
  
  c = width/10;
  co = color (random (255), random (255), random (255));
  //Botón
  xc=480;
  yc=480;
  diam=40;
}

void draw() {
  background (0);
  // VERTICAL
  for (int x = 0; x<c; x++) {
      if (x % 2 == 0) {
        fill(0);
      } else {
        fill (255);
        noStroke();
        rect (x*20, 0, 20, height);
      }
    }

  //CIRCULOS
  fill (co);
  float  x1 = map(mouseX, 0, width, 100, 400);
  float  y1 = map(mouseY, 0, width, 100, 400);
  ellipse(x1, y1, 170, 170); 
  fill(255);
  float x2 = map(mouseX, 0, width, -300, 600);
  float y2 = map(mouseY, 0, width, -300, 600);
  ellipse(x2, y2, 100, 100);

  //HORIZONTAL
  for (int y = 0; y<c; y++) {
      if (y % 2 == 0) {
        fill(0);
      } else {
        fill (255);
        noStroke();
        rect (0, y*20, width, 20);
      }
    }

  //Botón
  fill (0, 255, 0);
  stroke (0);
  strokeWeight(2);
  circle (xc, yc, diam);
}

void mousePressed () {
  if (dist(mouseX, mouseY, xc, yc)<(diam/2)) {
    background (255);
  
    for (int i = 0; i<width*2; i+=20) {
      strokeWeight(4);
      line(i, 0, 0, i);
    }
    //blendMode (DIFFERENCE);
    //fill(255);
    fill (co);
    noStroke ();
    textSize (100);
    textAlign (CENTER, CENTER);
    text ("OpArt", width/2, height/2);
    noLoop();
  }
}

void keyPressed () {
  println ("otra vez");
  if (key== ' ') {
    loop();
    background(0);
    c = width/10;
    co = color (random (255), random (255), random (255));
    //Botón
    xc=480;
    yc=480;
    diam=40;
  }
}
