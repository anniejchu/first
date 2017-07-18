float diameter, eindia, radius, einrad;
float bhdia, bhrad; 
float lx, ly;
float fourthx, halfx, threefourthx, fourthy, halfy, threefourthy;
float bhx, bhy;
boolean overLight = false;
boolean overBH = false;
boolean llocked = false;
boolean bhlocked = false;
float lxoffset = 0.0;
float lyoffset = 0.0;
float bhxoffset = 0.0;
float bhyoffset = 0.0;
PImage img; 
PFont f1, f2;
int mode;

void setup() {
  size(800, 500);
  f1 = loadFont("MicrosoftYaHeiLight-48.vlw");
  f2 = loadFont("MicrosoftJhengHeiUIRegular-48.vlw");
  String url = "https://www.news.virginia.edu/sites/default/files/article_image/fornax_dwarf_galaxy_header_5-2.jpg";
  img = loadImage(url, "jpg");
  fourthx = width/4;
  halfx = width/2;
  threefourthx = width * .75;
  fourthy = height/4;
  halfy = height/2;
  threefourthy = height * .75;
  lx = width/2;
  ly = height/2;
  bhx = lx - 70;
  bhy = ly -70;
  bhdia = 10;
  bhrad = bhdia/2;
  diameter = 10;
  radius = diameter/2;
  eindia = 10*diameter;
  einrad = eindia/2;// use mass function code thing
}


void draw() {
  background(0);
  if (mode == 0) {
    image(img, 0, 0);
    mdcerodir();
  }
  if (mode == 1) { //OPTION SCREEN 
    mdunodir();
  }
  if (mode == 2) {//ALIGNED (MLSS)
    background(222, 0, 0);
  }
  if (mode == 3) {//UNALIGNED (MLSS)
    background(0,222,0);
  }
  if (mode == 4) {//STATIONARY LENS MOVING SOURCE
    background(0,0,222);
  }
  if (mode == 5) { //OPTION SCREEN CUSTOM
    background(0);
    stroke(255);
    strokeWeight(4);
    line(width/2, 40, width/2, height);
    cincoarcs2(150,40);
    cincoarcs1();
    mdcincodir();
//    cincocircles();
  }
  
  if (mode == 6) { //MOVE BLACK HOLE
    ellipseMode(CENTER);
    mdseisdir();
    bhmoving();
    strokeWeight(2);
    noFill();
    //---------STAR-----------------------------------------------
    if ((mouseX > lx-radius) && (mouseX < lx+radius) && 
      (mouseY > ly-radius) && (mouseY < ly+radius)) {
      String star = "STAR";
      String einstein_ring = "ER";
      textSize(10);
      text(star, lx-12, ly-(radius+5));
      text(einstein_ring, lx-6, ly-(einrad+5));
      overLight = true;
      if (!llocked) {
        stroke(255);
        noFill();
      }
    } else {
      stroke(251, 255, 41);
      noFill();
      overLight = false;
    }
    ellipse(lx, ly, diameter, diameter);
    ellipse(lx, ly, eindia, eindia);

    //-------------BLACK HOLE---------------------------------------------------------
    if ((mouseX > bhx-bhrad) && (mouseX < bhx+bhrad) &&
      (mouseY > bhy-bhrad) && (mouseY < bhy+bhrad)) {
      String bh  = "BH";
      textSize(10);
      text(bh, bhx-6, bhy-(bhrad+5));
      overBH = true;
      if (!bhlocked) {
        stroke(255);
        noFill();
      }
    } else {
      stroke(155);
      noFill();
      overBH = false;
    }
    ellipse(bhx, bhy, bhdia, bhdia);
    //-----------END-----------------------------
  }
  
  if (mode == 7) { //MOVE SOURCE
    ellipseMode(CENTER);
    mdsietedir();
    lmoving();
    strokeWeight(2);
    noFill();
    //-------------------STAR--------------------------
    if ((mouseX > lx-radius) && (mouseX < lx+radius) && 
      (mouseY > ly-radius) && (mouseY < ly+radius)) {
      String star = "STAR";
      String einstein_ring = "ER";
      textSize(10);
      text(star, lx-12, ly-(radius+5));
      text(einstein_ring, lx-6, ly-(einrad+5));
      overLight = true;
      if (!llocked) {
        stroke(255);
        noFill();
      }
    } else {
      stroke(251, 255, 41);
      noFill();
      overLight = false;
    }
    ellipse(lx, ly, diameter, diameter);
    ellipse(lx, ly, eindia, eindia);

    //--------------BLACK HOLE----------------------------------
    if ((mouseX > bhx-bhrad) && (mouseX < bhx+bhrad) &&
      (mouseY > bhy-bhrad) && (mouseY < bhy+bhrad)) {
      String bh  = "BH";
      textSize(10);
      text(bh, bhx-6, bhy-(bhrad+5));
      overBH = true;
      if (!bhlocked) {
        stroke(255);
        noFill();
      }
    } else {
      stroke(155);
      noFill();
      overBH = false;
    }
    ellipse(bhx, bhy, bhdia, bhdia);
  }
  //--------END-------------------------------------------------------------
}
void mouseClicked() {
  if (mode == 0) {
    mode = 1;
  } 
  else if (mode == 1){
    if (mouseX > halfx && mouseY > halfy){
      mode = 5;
    }
    else if (mouseX < halfx && mouseY < halfy){
      mode = 2;
    }
    else if (mouseX < halfx && mouseY > halfy){
      mode = 3;
    }
    else if (mouseX > halfx && mouseY < halfy){
      mode = 4;
    }
  }
  else if (mode == 5){
    if (mouseX < halfx){
      mode = 6;
    } else {
      mode = 7;
    }
  }
}

void mousePressed() {
  if (overLight) {
    llocked = true;
    noFill();
  } else {
    llocked = false;
  }
  lxoffset = mouseX-lx;
  lyoffset = mouseY-ly;

  //----------------------------
  if (overBH) {
    bhlocked = true;
    noFill();
  } else {
    bhlocked = false;
  }
  bhxoffset = mouseX-bhx;
  bhyoffset = mouseY-bhy;
}

void mouseDragged() {
  if (llocked) {
    lx = mouseX-lxoffset;
    ly = mouseY-lyoffset;
  }
  //------------------------
  if (bhlocked) {
    bhx = mouseX - bhxoffset;
    bhy = mouseY - bhyoffset;
  }
}
void mouseReleased() {
  llocked = false;
  //---------------
  bhlocked = false;
}
//