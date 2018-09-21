class ControlPanel {
  String S;

  ControlPanel(Date d) {
    S = d.toString();
  }


  void drawPanel() {
    fill(0, 50, 0);
    rect(0, 0, 1000, 100);
    stroke(0);
    strokeWeight(3);
    fill(150);
    rect(150, 5, 210, 90);
    fill(0);
    textSize(13);
    text("Parking Rates: ", 205, 25);
    text("$3.00" + "/Hour   " + "Mon-Fri    " + "All Day", 252, 48);
    text("$2.00" + "/Hour   " + "Sat-Sun    " + "All Day", 252, 70);
    fill(255);
    textSize(15);
    text("Total Profit: $" + total, 500, 60);
  }
  void drawTime() {
    strokeWeight(2);
    textSize(15);
    fill(255);
    String A = d.toString();
    text(A, 78, 30);
  }
}