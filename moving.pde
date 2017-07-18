void lmoving() {
  if (keyPressed) {
    if (keyCode == UP) {
      ly = ly - 2;
    }
    if (keyCode == DOWN) {
      ly = ly + 2;
    }
    if (keyCode == LEFT) {
      lx = lx -2;
    }
    if (keyCode == RIGHT) {
      lx = lx + 2;
    }
  }
}

void bhmoving() {
  if (keyPressed) {
    if (key == 'e' || key == 'E') { // e key MOVING UP
      bhy = bhy - 2;
    }
    if (key == 'd' || key == 'D') { // d key MOVING DOWN
      bhy = bhy + 2;
    }
    if (key == 's' || key == 'S') { // s key MOVING LEFT
      bhx = bhx -2;
    }
    if (key == 'f' || key == 'F') { //f key MOVING RIGHT 
      bhx = bhx + 2;
    }
  }
}