//Oh! Hi dude
//Calizaya Villamonte, Angela
//Legajo: 88298/2
//https://www.youtube.com/watch?v=5BEPtJPDYw4

PFont font1, font2;
PImage [] Per = new PImage [20];
PImage [] Fon = new PImage [9];
int Pantallas;

void setup() {
  size (800, 400);

  Per[0] = loadImage("per_000.png");
  Per[1] = loadImage("per_001.png");
  Per[2] = loadImage("per_002.png");
  Per[3] = loadImage("per_003.png");
  Per[4] = loadImage("per_004.png");
  Per[5] = loadImage("per_005.png");
  Per[6] = loadImage("per_006.png");
  Per[7] = loadImage("per_007.png");
  Per[8] = loadImage("per_008.png");
  Per[9] = loadImage("per_009.png");
  Per[10] = loadImage("per_010.png");
  Per[11] = loadImage("per_011.png");
  Per[12] = loadImage("per_012.png");
  Per[13] = loadImage("per_013.png");
  Per[14] = loadImage("per_014.png");
  Per[15] = loadImage("per_015.png");
  Per[16] = loadImage("per_016.png");
  Per[17] = loadImage("per_017.png");
  Per[18] = loadImage("per_018.png");
  Per[19] = loadImage("per_019.png");

  for (int i=0; i<Fon.length; i++) {
    Fon[i] = loadImage ("fon_0" + i + ".png");
  }

  font1 = loadFont ("OldLondon-48.vlw");
  font2 = loadFont ("VCROSDMono-48.vlw");

  Pantallas = 0;
}

void draw () {
  if (Pantallas == 0) {
    image(Fon[0], 0, 0, 800, 400);

    //título
    texto(font1, color(255), 80);
    text("El ingrediente misterioso", 50, 100);
    
    //botón INICIAR
    if (zona(width/2,height/2-40,150,50)) {
      fill(0);
    } else {
      fill(72, 10, 142);
    }
    rect(width/2,height/2-40,150,50);
     
    texto(font2, color(255), 30);
    text("INICIAR", 340, height/2-30);

    //botón CRÉDITOS
    if (zona(width/2,height/2+30,150,50)) {
      fill(0);
    } else {
      fill(72, 10, 142);
    }
    rect(width/2,height/2+30,150,50);
    
    texto(font2, color(255), 30);
    text("Créditos", 333, height/2+40);
  }
  if (Pantallas == 1) {
    image(Fon[1], 0, 0, 800, 400);
    image(Per[0], -100, -50);
    //cuadro nombre
    recTexto(color(0), 70, 290, 100, 50);
    texto(font1, color(255), 30);
    text("Fenris", 40, 290);
    //cuadro texto
    recTexto(color(0), width/2, 350, width, 100);
    texto(font2, color(255), 20);
    text("Dana, tengo que irme de viaje por unos días, debes de hacer un", 10, 330);
    text("hechizo de barrera de protección para que La Torre este protegida", 10, 360);
    text("en mi ausencia", 10, 390);

    boton(color(255), 780, 380, 30, 30);
  }
  if (Pantallas == 2) {
    image(Fon[1], 0, 0, 800, 400);
    image(Per[4], 50,-10);

    recTexto(color(0), 70, 290, 100, 50);
    texto(font1, color(255), 30);
    text("Dana", 40, 290);

    recTexto(color(0), width/2, 350, width, 100);
    texto(font2, color(255), 20);
    text("Ok, necesitamos pelo de unicornio, lágrima de hada, hueso de", 10, 330);
    text("dragón y...no se ve el último ingrediente", 10, 360);

    boton(color(255), 780, 380, 30, 30);
  }
  if (Pantallas == 3) {
    image(Fon[1], 0, 0, 800, 400);
    image(Per[2], -150, -130, 700, 700);

    recTexto(color(0), 90, 290, 130, 50);
    texto(font1, color(255), 30);
    text("Estarossa", 40, 290);

    recTexto(color(0), width/2, 350, width, 100);
    texto(font2, color(255), 20);
    text("Ni modo, tenemos que salir a buscar el último ingrediente, uno", 10, 330);
    text("que luzca fundamental y especial", 10, 360);

    boton(color(255), 780, 380, 30, 30);
  }
  if (Pantallas == 4) {
    image(Fon[0], 0, 0, 800, 400);
    image(Per[1], 500, 30, 300, 300);

    recTexto(color(0), 70, 350, 100, 50);
    texto(font1, color(255), 30);
    text("Dana", 40, 350);

    recTexto(color(0), width/2, 380, width, 60);
    texto(font2, color(255), 20);
    text("¿Qué camino deberíamos escoger?", 10, 380);

    boton(color(72, 10, 142), 200, 70, 150, 50);
    texto(font2, color(255), 30);
    text("Camino 1", 133, 80);
    boton(color(72, 10, 142), 200, 160, 150, 50);
    texto(font2, color(255), 30);
    text("Camino 2", 133, 170);
    boton(color(72, 10, 142), 200, 250, 150, 50);
    texto(font2, color(255), 30);
    text("Camino 3", 133, 260);
  }
  if (Pantallas == 5) {
    image(Fon[2], 0, 0, 800, 400);
    image(Per[5], 0, 50);
    image(Per[6], 400, 170, 395, 204 );

    boton(color(255), 780, 380, 30, 30);
  }
  if (Pantallas == 6) {
    image(Fon[2], 0, 0, 800, 400);
    image(Per[5], 0, 50);
    image(Per[7], 400, 170, 395, 204 );

    recTexto(color(0), 70, 330, 110, 50);
    texto(font1, color(255), 30);
    text("Ganso", 40, 330);

    recTexto(color(0), width/2, 370, width, 70);
    texto(font2, color(255), 20);
    text("Cuack cuack", 10, 360);
    text("(Nadie puede acercarse al gran huevo)", 10, 390);

    boton(color(255), 780, 380, 30, 30);
  }
  if (Pantallas == 7) {
    image(Fon[2], 0, 0, 800, 400);
    image(Per[5], 0, 50);
    image(Per[7], 400, 170, 395, 204 );
    image(Per[1], 30, 20, 300, 300);

    recTexto(color(0), 70, 290, 100, 50);
    texto(font1, color(255), 30);
    text("Dana", 40, 290);

    recTexto(color(0), width/2, 350, width, 100);
    texto(font2, color(255), 20);
    text("No sé que dice pero ¿qué hacemos?", 10, 330);

    boton(color(72, 10, 142), 100, 365, 100, 50);
    texto(font2, color(255), 30);
    text("Huir", 70, 374);
    boton(color(72, 10, 142), 355, 365, 330, 50);
    texto(font2, color(255), 30);
    text("Llevarse el huevo", 210, 375);
  }
  if (Pantallas == 8) {
    image(Fon[2], 0, 0, 800, 400);
    image(Per[8], 150, -30);
    image(Per[7], 400, 170, 395, 204 );
    image(Per[2], -200, -100, 700, 700);

    recTexto(color(0), 90, 350, 130, 50);
    texto(font1, color(255), 30);
    text("Estarossa", 40, 350);

    recTexto(color(0), width/2, 380, width, 60);
    texto(font2, color(255), 20);
    text("Nooo, el huevo se rompió y se abrió un portal", 10, 380);

    boton(color(255), 780, 380, 30, 30);
  }
  if (Pantallas == 9) {
    image(Fon[8], 0, 0, 800, 1100);
    image(Per[9], 300, 200, 20, 29);
    image(Per[2], 100, 30, 80, 80);

    recTexto(color(0), width/2, 350, width, 100);
    texto(font2, color(255), 20);
    text("Estarossa: Lindo lugar ¿no crees?", 10, 330);
    text("Dana: Cállate", 10, 360);

    boton(color(72, 10, 142), 650, 100, 150, 50);
    texto(font2, color(255), 30);
    text("Otra vez", 580, 110);
    boton(color(72, 10, 142), 650, 200, 150, 50);
    texto(font2, color(255), 30);
    text("Créditos", 583, 210);
  }
  if (Pantallas == 10) {
    image(Fon[3], 0, 0, 800, 400);
    image(Per[11], -20, 0);

    recTexto(color(0), 90, 290, 130, 50);
    texto(font1, color(255), 30);
    text("Estarossa", 40, 290);

    recTexto(color(0), width/2, 350, width, 100);
    texto(font2, color(255), 20);
    text("No te acerques Dana, él es Mael, hizo algo gatastrófico, él... se", 10, 330);
    text("comió mis Whiskas", 10, 360);

    boton(color(255), 780, 380, 30, 30);
  }
  if (Pantallas == 11) {
    image(Fon[3], 0, 0, 800, 400);
    image(Per[12], 150, 0);

    recTexto(color(0), 70, 290, 100, 50);
    texto(font1, color(255), 30);
    text("Mael", 40, 290);

    recTexto(color(0), width/2, 350, width, 100);
    texto(font2, color(255), 20);
    text("Yo no me comí tus Whiskas, para ese tiempo yo estaba de viaje en", 10, 330);
    text("Camelot", 10, 360);

    boton(color(255), 780, 380, 30, 30);
  }
  if (Pantallas == 12) {
    image(Fon[3], 0, 0, 800, 400);
    image(Per[2], -150, -130, 700, 700);

    recTexto(color(0), 90, 290, 130, 50);
    texto(font1, color(255), 30);
    text("Estarossa", 40, 290);

    recTexto(color(0), width/2, 350, width, 100);
    texto(font2, color(255), 20);
    text("Ah, tienes razón... de todos modos, estamos buscando un ingrediente", 10, 330);
    text("secreto", 10, 360);

    boton(color(255), 780, 380, 30, 30);
  }
  if (Pantallas == 13) {
    image(Fon[4], 0, 0, 800, height+200);
    image(Per[10], 250, 40);

    recTexto(color(0), 70, 290, 100, 50);
    texto(font1, color(255), 30);
    text("Mael", 40, 290);

    recTexto(color(0), width/2, 350, width, 100);
    texto(font2, color(255), 20);
    text("Tsss ¿ingrediente secreto? Secreto es este lugar JAJAJA...", 10, 330);
    text("ups, se supone que no podía decirlo", 10, 360);

    boton(color(255), 780, 380, 30, 30);
  }
  if (Pantallas == 14) {
    image(Fon[5], 0, 0, 800, 400);
    image(Per[13], 250, 10);

    recTexto(color(0), 90, 290, 130, 50);
    texto(font1, color(255), 30);
    text("Carbonilla", 40, 290);

    recTexto(color(0), width/2, 350, width, 100);
    texto(font2, color(255), 20);
    text("Bienvenidos al Mundo Ghibli, un mundo mágico y secreto donde puedes", 10, 330);
    text("encontrar de todo, así que ¿en qué los puedo ayudar?", 10, 360);

    boton(color(255), 780, 380, 30, 30);
  }
  if (Pantallas == 15) {
    image(Fon[5], 0, 0, 800, 400);
    image(Per[1], 30, 20, 300, 300);

    recTexto(color(0), 70, 290, 100, 50);
    texto(font1, color(255), 30);
    text("Dana", 40, 290);

    recTexto(color(0), width/2, 350, width, 100);
    texto(font2, color(255), 20);
    text("Hola, tengo que hacer un hechizo de una barrera de protección, pero", 10, 330);
    text("no sé cual es el último ingrediente", 10, 360);

    boton(color(255), 780, 380, 30, 30);
  }
  if (Pantallas == 16) {
    image(Fon[5], 0, 0, 800, 400);
    image(Per[14], 250, 10);

    recTexto(color(0), 90, 290, 130, 50);
    texto(font1, color(255), 30);
    text("Carbonilla", 40, 290);

    recTexto(color(0), width/2, 350, width, 100);
    texto(font2, color(255), 20);
    text("¡Ajá! Este es el ingrediente multifuncional, es una poción", 10, 330);
    text("que puede reemplazar a cualquier elemento", 10, 360);

    boton(color(255), 780, 380, 30, 30);
  }
  if (Pantallas == 17) {
    image(Fon[5], 0, 0, 800, 400);
    image(Per[2], -150, -130, 700, 700);

    recTexto(color(0), 90, 290, 130, 50);
    texto(font1, color(255), 30);
    text("Estarossa", 40, 290);

    recTexto(color(0), width/2, 350, width, 100);
    texto(font2, color(255), 20);
    text("Es perrrfecto, muchas gracias, ahora Dana podrá hacer el hechizo", 10, 330);
    text("y así proteger La Torre", 10, 360);

    boton(color(72, 10, 142), 650, 100, 150, 50);
    texto(font2, color(255), 30);
    text("Otra vez", 580, 110);
    boton(color(72, 10, 142), 650, 200, 150, 50);
    texto(font2, color(255), 30);
    text("Créditos", 583, 210);
  }
  if (Pantallas == 18) {
    image(Fon[6], 0, -150, 800, 600);
    image(Per[1], 30, 50, 300, 300);

    recTexto(color(0), 70, 350, 100, 50);
    texto(font1, color(255), 30);
    text("Dana", 40, 350);

    recTexto(color(0), width/2, 380, width, 60);
    texto(font2, color(255), 20);
    text("Parece que hay un campamento aquí", 10, 380);

    boton(color(255), 780, 380, 30, 30);
  }
  if (Pantallas == 19) {
    image(Fon[6], 0, -150, 800, 600);
    image(Per[16], 250, 10);

    recTexto(color(0), 90, 290, 130, 50);
    texto(font1, color(255), 30);
    text("Fueguito", 50, 290);

    recTexto(color(0), width/2, 350, width, 100);
    texto(font2, color(255), 20);
    text("¡No!¡Ayúdame! Dame madera, hojas secas algo que sirva por favor", 10, 330);
    text("o si no me consumiré y moriré", 10, 360);

    boton(color(255), 780, 380, 30, 30);
  }
  if (Pantallas == 20) {
    image(Fon[6], 0, -150, 800, 600);
    image(Per[2], -150, -130, 700, 700);

    recTexto(color(0), 90, 350, 130, 50);
    texto(font1, color(255), 30);
    text("Estarossa", 40, 350);

    recTexto(color(0), width/2, 380, width, 60);
    texto(font2, color(255), 20);
    text("¿Ayudamos?", 10, 380);

    boton(color(72, 10, 142), 350, 320, 70, 50);
    texto(font2, color(255), 30);
    text("Sí", 333, 330);
    boton(color(72, 10, 142), 450, 320, 70, 50);
    texto(font2, color(255), 30);
    text("No", 433, 330);
  }
  if (Pantallas == 21) {
    image(Fon[6], 0, -150, 800, 600);
    image(Per[17], 250, 10);

    recTexto(color(0), 90, 350, 130, 50);
    texto(font1, color(255), 30);
    text("Fueguito", 40, 350);

    recTexto(color(0), width/2, 380, width, 60);
    texto(font2, color(255), 20);
    text("*Ñam ñam ñam*", 10, 380);

    boton(color(255), 780, 380, 30, 30);
  }
  if (Pantallas == 22) {
    image(Fon[6], 0, -150, 800, 600);
    image(Per[18], 250, 00);

    recTexto(color(0), 90, 290, 130, 50);
    texto(font1, color(255), 30);
    text("Calcifer", 50, 290);

    recTexto(color(0), width/2, 350, width, 100);
    texto(font2, color(255), 20);
    text("JAJAJA pequeños ilusos, soy Calcifer, el demonio fuego, ahora que", 10, 330);
    text("estoy en forma podré apoderarme de La Torre JAJAJA", 10, 360);

    boton(color(255), 780, 380, 30, 30);
  }
  if (Pantallas == 23) {
    image(Fon[7], 0, 0, 800, 400);
    image(Per[19], 200, -100);

    recTexto(color(0), width/2, 380, width, 60);
    texto(font2, color(255), 20);
    text("Dana y Estarossa: Nooooooo", 10, 380);

    boton(color(72, 10, 142), 650, 100, 150, 50);
    texto(font2, color(255), 30);
    text("Otra vez", 580, 110);
    boton(color(72, 10, 142), 650, 200, 150, 50);
    texto(font2, color(255), 30);
    text("Créditos", 583, 210);
  }
  if (Pantallas == 24) {
    image(Fon[6], 0, -150, 800, 600);
    image(Per[1], 30, 10, 300, 300);
    image(Per[2], 0, -100, 700, 700);

    recTexto(color(0), width/2, 350, width, 100);
    texto(font2, color(255), 20);
    text("Dana y Estarossa: Neee", 10, 330);

    boton(color(72, 10, 142), 100, 365, 100, 50);
    texto(font2, color(255), 20);
    text("Caminos", 60, 374);
  }
  if (Pantallas == 25) {
    image(Fon[0], 0, 0, 800, 400);
    texto(font1, color(255), 80);
     text("El ingrediente misterioso", 50, 100);

    texto(font2, color(255), 20);
    text("PERSONAJES", 360, 130);
    text("Fenris, el elfo", 80, 160);
    text("Dana, la aprendiz de magia", 80, 190);
    text("Salem, el gato", 80, 220);
    text("Mael, elotro gato", 80, 250);
    text("El ganso", 450, 160);
    text("La carbonilla", 450, 190);
    text("Calcifer, el demonio fuego", 450, 220);

    text("DATOS", 380, 280);
    text("Prof. Matias Jauregui Lorda", 80, 310);
    text("Comisión 2", 80, 340);
    text("Calizaya Villamonte, Angela", 450, 310);
    text("Legajo 88298/2", 450, 340);

    texto(font2, color(70), 30);
    text("Presiona 'r' para reiniciar el juego", 100, 390);
  }
}

void mousePressed() {
  //botón inicio
  if ((mouseX > width/2) && (mouseX < width/2+150) && (mouseY > 160) && (mouseY < 160+50)) {
    Pantallas = 1;
  }
  //botón CRÉDITOS
  if ((mouseX > width/2) && (mouseX < width/2+150) && (mouseY > 230) && (mouseY < 230+50)) {
    Pantallas = 25;
  }
  //botones blancos cuadrados
  if ((mouseX > 780) && (mouseX < 780+30) && (mouseY > 380) && (mouseY < 380+30)) {
    Pantallas ++;
  }
  //botón camino1
  if ((mouseX > 200) && (mouseX < 200+150) && (mouseY > 70) && (mouseY < 70+50)) {
    Pantallas = 5;
  }
  //botón camino2
  if ((mouseX > 200) && (mouseX < 200+150) && (mouseY > 160) && (mouseY < 160+50)) {
    Pantallas = 10;
  }
  //botón camino3
  if ((mouseX > 200) && (mouseX < 200+150) && (mouseY > 250) && (mouseY < 250+50)) {
    Pantallas = 18;
  }
  //botón HUIR
  if ((mouseX > 100) && (mouseX < 100+100) && (mouseY > 365) && (mouseY < 365+50)) {
    Pantallas = 4;
  }
  //botón LLEVAR
  if ((mouseX > 355) && (mouseX < 355+330) && (mouseY > 365) && (mouseY < 365+50)) {
    Pantallas = 8;
  }
  //botón OTRA VEZ
  if ((mouseX > 650) && (mouseX < 650+150) && (mouseY > 100) && (mouseY < 100+50)) {
    Pantallas = 0;
  }
  //botón CRÉDITOS (caminos)
  if ((mouseX > 650) && (mouseX < 650+150) && (mouseY > 200) && (mouseY < 200+50)) {
    Pantallas = 25;
  }
  //botón SÍ
  if ((mouseX > 350) && (mouseX < 350+70) && (mouseY > 320) && (mouseY < 320+50)) {
    Pantallas = 21;
  }
  //botón NO
  if ((mouseX > 450) && (mouseX < 450+70) && (mouseY > 320) && (mouseY < 320+50)) {
    Pantallas = 24;
  }
}

void keyPressed() {
  if (key == 'r') {
    Per[0] = loadImage("per_000.png");
    Per[1] = loadImage("per_001.png");
    Per[2] = loadImage("per_002.png");
    Per[3] = loadImage("per_003.png");
    Per[4] = loadImage("per_004.png");
    Per[5] = loadImage("per_005.png");
    Per[6] = loadImage("per_006.png");
    Per[7] = loadImage("per_007.png");
    Per[8] = loadImage("per_008.png");
    Per[9] = loadImage("per_009.png");
    Per[10] = loadImage("per_010.png");
    Per[11] = loadImage("per_011.png");
    Per[12] = loadImage("per_012.png");
    Per[13] = loadImage("per_013.png");
    Per[14] = loadImage("per_014.png");
    Per[15] = loadImage("per_015.png");
    Per[16] = loadImage("per_016.png");
    Per[17] = loadImage("per_017.png");
    Per[18] = loadImage("per_018.png");
    Per[19] = loadImage("per_019.png");

    for (int i=0; i<Fon.length; i++) {
      Fon[i] = loadImage ("fon_0" + i + ".png");
    }

    font1 = loadFont ("OldLondon-48.vlw");
    font2 = loadFont ("VCROSDMono-48.vlw");

    Pantallas = 0;
  }
}

//texto de dialogo y nombre
void texto(PFont font, color ct, int sizeT) {
  fill (ct);
  textFont (font);
  textSize (sizeT);
}

//rectangulo donde va el texto y nombre
void recTexto(color cr, float posXr, float posYr, float wr, float hr) {
  fill (cr);
  rectMode(CENTER);
  rect (posXr, posYr, wr, hr);
}

//botones
void boton(color cb, float posXb, float posYb, float wb, float hb) {
  fill (cb);
  rectMode(CENTER);
  rect (posXb, posYb, wb, hb);
}

//boolean zona
boolean zona (float x, float y, float w, float h){
  boolean b;
  if ((mouseX > x) && (mouseX < x+w) && (mouseY > y) && (mouseY < y+h)){
    b = true;
  }else{
    b = false;
  }
    return b;
}
