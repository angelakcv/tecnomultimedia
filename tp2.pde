// créditos basado en DICHOS

float xc, yc, diam;
PFont letra1, letra2;
PImage ancla, calavera, nota1, nota2, nota3, nube, ovejaMl, ovejaMr, pyv;
color cLetra = color (0, 255, 255);

void setup() {
  size (900, 500);
  frameRate (60);

  //Botón
  xc=870;
  yc=470;
  diam=40;
  //Fuentes
  letra1 = loadFont ("betterPersonalUse-200.vlw");
  letra2 = loadFont ("sweetpurple-100.vlw");
  //Imagenes
  ancla = loadImage ("borde ancla draw.png");
  calavera = loadImage ("calavera draw.png");
  nota1 = loadImage ("nota1 draw.png");
  nota2 = loadImage ("nota2 draw.png");
  nota3 = loadImage ("nota3 draw.png");
  nube = loadImage ("nube draw.png");
  ovejaMl = loadImage ("oveja mira_left draw.png");
  ovejaMr = loadImage ("oveja mira_right draw.png");
  pyv = loadImage ("pan y vino draw.png");

  textFont (letra1);
  textFont (letra2);
  textAlign (CENTER, CENTER);
}

void draw () {
  background (0);

  //TEXTO 1
  if (frameCount<290) {
    textFont (letra1);
    fill (frameCount);
    textSize (80);
    text ("Mattel Entertainment", width/2, height/2-40);

    textFont (letra2);
    fill (frameCount);
    textSize (20);
    text ("PRESENTA", width/2, height/2+40);

    imageMode(CENTER);
    tint (frameCount);
    image (calavera, width/5, height/2+125, 180, 200);
  } else {

    //TEXTO 2
    if ((frameCount>290)&&(frameCount<580)) {
      textFont (letra2);
      fill (255);
      textSize (20);
      text ("A", width/2, height/2-70);

      textFont (letra1);
      fill (255);
      textSize (80);
      text ("Mainframe Entertainment", width/2, height/2);

      textFont (letra1);
      fill (255);
      textSize (80);
      text ("Production", width/2, height/2+70);

      imageMode(CENTER);
      tint (255);
      image (nube, width-200, height/4, 300, 200);
    }
  }

  //TITULO
  if ((frameCount>580)&&(frameCount<870)) {
    textFont (letra1);
    fill (255);
    textSize (200);
    text ("Dichos", width/2, height/2);
    
    fill(255);
    stroke(255);
    strokeWeight(5);
    circle(random(width), random (height), random(10));
    circle(random(width), random (height), random(15));
    circle(random(width), random (height), random(20));
    circle(random(width), random (height), random(25));
    circle(random(width), random (height), random(30));
    
    imageMode(CENTER);
    image (ancla, width/2, height/2, 700, 500);
  }

  //ESCRITO POR
  if ((frameCount>870)&&(frameCount<1160)) {
    textFont (letra2);
    fill (255);
    textSize (20);
    text ("ESCRITO POR", width/2-80, height/2-70);

    textFont (letra1);
    fill (255);
    textSize (80);
    text ("Elisen Allen", width/2, height/2);

    textFont (letra1);
    fill (255);
    textSize (80);
    text ("Diane Duane", width/2+80, height/2+70);

    imageMode(CENTER);
    image (ovejaMl, width-200, height/4);
    image (ovejaMr, width/4-50, height/2);
    image (ovejaMr, width/6-50, height/2+125);
    image (ovejaMr, width/3-50, height/2+170);
  }

  //PRODUCIDO POR
  if ((frameCount>1160)&&(frameCount<1450)) {
    textFont (letra2);
    fill (255);
    textSize (20);
    text ("PRODUCIDO POR", width/2-100, height/2-70);

    textFont (letra1);
    fill (255);
    textSize (80);
    text ("Nancy Bennett", width/2, height/2);

    textFont (letra1);
    fill (255);
    textSize (80);
    text ("Luke Cerroll", width/2+50, height/2+70);

    imageMode(CENTER);
    image (pyv, width/6, height/2+90, 240, 270);
  }

  //MÚSICA POR
  if ((frameCount>1450)&&(frameCount<1740)) {
    textFont (letra2);
    fill (255);
    textSize (20);
    text ("MÚSICA POR", width/2, height/2-40);

    textFont (letra1);
    fill (255);
    textSize (80);
    text ("Eric Colvia", width/2, height/2+40);

    imageMode(CENTER);
    image (nota1, width/2+250, height/4);
    image (nota2, width/2+350, height/2+125);
    image (nota3, width-800, height/2+70, 150, 250);
  }

  println ("contador: " + frameCount);

  //botón
  fill (0);
  stroke (255);
  strokeWeight(2);
  circle (xc, yc, diam);
}

//BOTÓN
void mouseMoved () {
  if (dist(mouseX, mouseY, xc, yc)<(diam/2)) {
    //background (255);
    textFont(letra2);
    fill (cLetra = color (0, 255, random(255)));
    textSize(100);
    text("GRACIAS", width/2, height/2);
  }
}
