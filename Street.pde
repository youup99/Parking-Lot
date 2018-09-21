class street {
  int street_north = 1;
  int street_south = 2;

  void drawStreet() {
    // north street
    fill(100);
    noStroke();
    rect(0, 100, 1000, 100);
    stroke(255);
    rect(470, 200, 80, 100);
    textSize(20);
    fill(255);
    textAlign(CENTER);
    text("North Street", 500, 150);

    // south street

    fill(100);
    noStroke();
    rect(0, 900, 1000, 100);
    stroke(255);
    strokeWeight(3);
    rect(470, 800, 80, 100);
    textSize(20);
    fill(255);
    textAlign(CENTER);
    text("South Street", 500, 950);
  }
}