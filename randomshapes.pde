//--------MODE 4-------------------------
void cincocircles() {
  ellipseMode(RADIUS);
  stroke(0);
  strokeWeight(3);
  noFill();
  ellipse(width*.25, height*.5, 150, 150);
  stroke(0);
  strokeWeight(3);
  noFill();
  ellipse(width*.75, height*.5, 150, 150);
}


void cincoarcs2(int size, int num) {
  ellipseMode(RADIUS);
  float grayvalues = 255/num;
  float steps = size/num;
  for (int i = 0; i<num; i++){
    stroke(i*grayvalues);
    fill(i*grayvalues);
    ellipse((width * .75), (height * .5), size-i*steps,size-i*steps);
  }
}

void cincoarcs1(){
  ellipseMode(RADIUS);
  for (int i = 0; i<30; i+=1){
    stroke(255-(i*8));
    noFill();
    ellipse(width*.25, height*.5, 130+i, 130+i);
  }
}