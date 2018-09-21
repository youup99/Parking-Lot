class ParkingStallSection {
  int sec;
  int x;
  int y;
  int stall_x;
  int stall_y;
  ParkingStall [][] st;
  Date st_date;
  Date st_leave;
  ParkingStallSection(int sec_num, int sec_x, int sec_y) {
    sec = sec_num;
    x = sec_x;
    y = sec_y;
    st = new ParkingStall [5][2];
    int i = 0;
    int j = 0;
    st_date = new Date(1, 1, 20, true);
    if (sec == 1) {
      stall_x = 130;
      stall_y = 320;
      for (i = 0; i < 5; i++, stall_x += 60) {
        for (j = 0, stall_y = 320; j < 2; j++, stall_y += 45) {
          st [i][j] = new ParkingStall(stall_x, stall_y, 60, 45);
          st [i][j].drawStall();
        }
      }
    }
    if (sec == 2) {
      stall_x = 565;
      stall_y = 320;
      for (i = 0; i < 5; i++, stall_x += 60) {
        for (j = 0, stall_y = 320; j < 2; j++, stall_y += 45) {
          st [i][j] = new ParkingStall(stall_x, stall_y, 60, 45);
          st [i][j].drawStall();
        }
      }
    }
    if (sec == 3) {
      stall_x = 130;
      stall_y = 500;
      for (i = 0; i < 5; i++, stall_x += 60) {
        for (j = 0, stall_y = 500; j < 2; j++, stall_y += 45) {
          st [i][j] = new ParkingStall(stall_x, stall_y, 60, 45);
          st [i][j].drawStall();
        }
      }
    }
    if (sec == 4) {
      stall_x = 565;
      stall_y = 500;
      for (i = 0; i < 5; i++, stall_x += 60) {
        for (j = 0, stall_y = 500; j < 2; j++, stall_y += 45) {
          st [i][j] = new ParkingStall(stall_x, stall_y, 60, 45);
          st [i][j].drawStall();
        }
      }
    }
    if (sec == 5) {
      stall_x = 130;
      stall_y = 680;
      for (i = 0; i < 5; i++, stall_x += 60) {
        for (j = 0, stall_y = 680; j < 2; j++, stall_y += 45) {    
          st [i][j] = new ParkingStall(stall_x, stall_y, 60, 45);
          st [i][j].drawStall();
        }
      }
    }
    if (sec == 6) {
      stall_x = 565;
      stall_y = 680;
      for (i = 0; i < 5; i++, stall_x += 60) {
        for (j = 0, stall_y = 680; j < 2; j++, stall_y += 45) {
          st [i][j] = new ParkingStall(stall_x, stall_y, 60, 45);
          st [i][j].drawStall();
        }
      }
    }
  }
}