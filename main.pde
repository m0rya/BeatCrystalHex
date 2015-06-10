Crystal tes;
void setup() {
  tes = new Crystal();
  size(900, 900);
}
int c = 1;
int d = 10;
int size = 6;

void draw() {
  background(0);

  for (int i=0; i<c; i++) {
    if (i%2==0 || i%3==0) {
      tes.draw3Hex(width/2, height/2, i, size,d);
    } else {
      tes.drawRoundHex(width/2, height/2, i, size,d);
    }
  }
  
  saveFrame("mov/####.tif");
}

void keyPressed() {
  if (key == ' ') {
    c ++;
  }
  if (key == 'z') {
    c--;
  }
  
  if(key == 'a'){
    d++;
  }
  if(key =='s'){
    d--;
  }
}