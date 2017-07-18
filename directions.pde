void mdsietedir() {
  textAlign(LEFT);
  fill(255);
  String dir = "1. DRAG EACH TO DESIRED POSITION \n2. USE ARROW KEYS TO MOVE STAR";
  textSize(16);
  text(dir, 10, 20);
}

void mdseisdir() {
  textAlign(LEFT);
  fill(255);
  String dir = "1. DRAG EACH TO DESIRED POSITION \n2. USE S,D,F,E TO MOVE BLACK HOLE \n S=LEFT | F=RIGHT | E=UP | D=DOWN";
  textSize(16);
  text(dir, 10, 20);
}

void mdcincodir() {
  textAlign(CENTER);
  String dir = "CHOOSE MODE";
  textSize(20);
  text(dir, halfx, 30);
  fill(240);
  String bhmoving = "MOVING LENS\n(BLACK HOLE)";
  text(bhmoving, fourthx, halfy);
  fill(0);
  String lmoving = "MOVING LIGHT SOURCE\n(STAR)";
  text(lmoving, threefourthx, halfy);
}

void mdcerodir(){
      //
    textSize(32);
    textAlign(CENTER);
    textFont(f1);
    String welc = "Welcome to the \nMICROLENSING SIMULATOR";
    text(welc, halfx, halfy-25);
    //
    textFont(f2);
    textSize(16);
    textAlign(LEFT);
    String begin = "click anywhere to begin";
    text(begin, 20, height-20);
    //
    textSize(10);
    textAlign(RIGHT);
    String pc = "Background courtesy of University of Virginia";
    text(pc, width-5, height-10);
}

void mdunodir(){
    textAlign(CENTER);
    textFont(f2);
    textSize(20);
    String choice = "CHOOSE TYPE OF SIMULATION";
    text(choice, halfx, 30);
    //
    textSize(17);
    String mlss1 = "MOVING LENS \nSTATIONARY SOURCE \nALIGNED";
    text(mlss1, fourthx, fourthy);
    //
    textSize(17);
    String mlss2 = "MOVING LENS \nSTATIONARY SOURCE \nUNALIGNED";
    text(mlss2, fourthx, threefourthy);
    //
    textSize(17);
    String slms = "STATIONARY LENS \nMOVING SOURCE";
    text(slms, threefourthx, fourthy);
    //
    textSize(17);
    String custom = "CUSTOM SIMULATIONS";
    text(custom, threefourthx, threefourthy);
}