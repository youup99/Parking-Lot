class gate {
  boolean status;
  float x_pos, y_pos;
  gate(float x, float y, boolean exit) {
    status = true;
    x_pos = x;
    y_pos = y;
  }

  void CloseGate() {
    if (spot_left == 0) {
      status = false;
    }
    status = true;
  }

  void openGate() {
    if (spot_left > 0) {
      status = true;
    }
  }


  void drawGate() {
    // entrance gate
    if (spot_left > 0) {
      // open gate
      rect(450, 230, 10, 90);
    }
    if (spot_left == 0) {
      // close gate
      fill(0);
      rect(450, 230, 90, 10);
    }
    fill(255);
    rect(x_pos, y_pos, 80, 20);
    fill(0);
    textSize(13);
    text("ENTRANCE", 410, 225);
    fill(0, 50, 200);
    rect(x_pos, y_pos + 20, 80, 20);
    fill(0);
    text("Spaces: " + spot_left, 410, 245);

    // exit gate
    fill(255);
    rect(450, 830, 10, -90);
    fill(255);
    rect(x_pos, y_pos + 600, 80, 20);
    fill(0);
    textSize(13);
    text("EXIT", 400, 825);
    fill(0, 50, 200);
    rect(x_pos, y_pos + 620, 80, 20);
    fill(0);
    text("Fee: $"+ cost, 410, 845);
  }
}