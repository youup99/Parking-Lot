class car {
  PImage img;
  int q, w, e, k;
  int timeI;
  int timeO;
  int timeW;
  float speed;
  float x;
  float y;
  PriceCalculator calc;
  int sec;

  car(PImage i) {
    img = i;
    speed = 5;
    x = 100;
    y = 100;
  }

  void drawCarNo() {
    image(img, x, y, 100, 60);
    x += speed;
  }

  void drawCarIn() {
    int r = int(random(500));
    if (x < 450) {
      image(img, x, y, 100, 60);
      x += speed;
    }
    if (x == 450) {
      if (y < 200) {
        y += speed;
      }
    }
    if (y == 200) {
      timeI = ellapsed;
      timeW = 0;
      spot_left--;
      while (true) {
        if (d.today == 5 || d.today == 6) {
          timeW++;
        }
        q = int(random(3));
        w = int(random(2));
        e = int(random(1, 5));
        k = int(random(1, 2));
        if (pl.section[q][w].st[e][k].occupied == false)
          break;
      }
      y = 251;
    }
    if (y == 251) {
      pl.section[q][w].st[e][k].setStatus(true, d);
      pl.section[q][w].st[e][k].drawStall();
      if (r == 5) {
        pl.section[q][w].st[e][k].setStatus(false, d);
        pl.section[q][w].st[e][k].drawStall();
        timeO = ellapsed;
        calc = new PriceCalculator(timeI, timeO, timeW);
        if (q == 0 && w == 0)
          sec = 1;
        if (q == 0 && w == 1)
          sec = 2;
        if (q == 1 && w == 0)
          sec = 3;
        if (q == 1 && w == 1)
          sec = 4;
        if (q == 2 && w == 0)
          sec = 5;
        if (q == 2 && w == 1)
          sec = 6;
        //println("section " + sec + " row " + e + " column " + k + " was occupied at: " + timeI);
        println("section " + sec + " row " + e + " column " + k + " was vacant at: " + d.toString());
        spot_left++;
        y = 900;
      }
    }
    if (x < 1000 && y == 900) {
      image(img, x, y, 100, 60);
      x += speed;
    }
  }
}