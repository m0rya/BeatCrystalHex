class Crystal {


  void drawRoundHex(int x, int y, int n, int r,int rythm) {
    PVector[] base = new PVector[6];
    for (int i=0; i<6; i++) {
      base[i] = new PVector(x+3*r*(n+1)*sin(radians(i*60)), y-3*r*(n+1)*cos(radians(i*60)));
      drawHex(int(base[i].x), int(base[i].y), r, color(0, int(map(cos(radians(n*10+frameCount*rythm)),-1,1,0,255)), int(map(sin(radians(n*10+frameCount*rythm)),-1,1,0,255))));
    }

    for (int i=0; i<6; i++) {

      for (int j=0; j<n; j++) {
        PVector tmp;
        if (i!=5) {
          tmp = PVector.sub(base[i+1], base[i]);
        } else {
          tmp = PVector.sub(base[0], base[5]);
        }
        tmp.div(n+1);
        tmp.mult(j+1);
        tmp.add(base[i]);

        drawHex(int(tmp.x), int(tmp.y), r, color(int(map(sin(radians(n*10+frameCount*rythm)),-1,1,0,255)), 0, 255));
      }
    }
  }

  void draw3Hex(int x, int y, int n, int r,int rythm) {
    PVector[] base = new PVector[6];
    for (int i=0; i<6; i++) {
      base[i] = new PVector(x+3*r*(n+1)*sin(radians(i*60)), y-3*r*(n+1)*cos(radians(i*60)));
      drawHex(int(base[i].x), int(base[i].y), r, color(0, int(map(cos(radians(n*10+frameCount*rythm)),-1,1,0,255)), 255));
    }

    for (int i=0; i<6; i++) {

      PVector tmp;
      if (i!=5) {
        tmp = PVector.sub(base[i+1], base[i]);
      } else {
        tmp = PVector.sub(base[0], base[5]);
      }
      PVector[] ttt = new PVector[2];
      ttt[0] = PVector.div(tmp, n+1);
      ttt[1] = PVector.div(tmp, n+1);

      ttt[1].mult(n);


      for (int j=0; j<2; j++) {
        ttt[j].add(base[i]);
        drawHex(int(ttt[j].x), int(ttt[j].y), r, color(0, int(map(cos(radians(n*10+frameCount*rythm)),-1,1,0,255)), 255));
      }
    }
  }


  void drawHex(int x, int y, int r, color c) {
    PVector[] pnt = new PVector[6];
    for (int i=0; i<6; i++) {
      pnt[i] = new PVector(x + r*sin(radians(i*60)), y - r*cos(radians(i*60)));
    }


    fill(c);
    noStroke();
    beginShape();
    for (int i=0; i<6; i++) vertex(pnt[i].x, pnt[i].y);

    endShape(CLOSE);
  }
  
  
  
}