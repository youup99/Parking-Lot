class ParkingLot {
  ParkingStallSection [][] section;
  int lot_width = 800;
  int lot_height = 500;
  gate enter;
  gate exit;
  boolean gate;

  void drawLot() {
    stroke(255);
    strokeWeight(2);
    fill(100);
    rect(100, 300, lot_width, lot_height);
    section = new ParkingStallSection [3][2];
    int sec = 1;
    for (int i = 0, y = 280; i < 3; i++, y += 4) {
      for (int j = 0, x = 120; j < 2; j++, x += 40, sec++) {
        section [i][j] = new ParkingStallSection(sec, x, y);
      }
    }
    if (spot_left != 0) {
      gate = true;
    }
    if (spot_left == 0) {
      gate = false;
    }

    enter = new gate(370, 210, gate);
    enter.drawGate();
    enter.openGate();
    enter.CloseGate();
    exit = new gate(370, 810, true);
    exit.drawGate();
    exit.openGate();
    exit.CloseGate();
  }
}