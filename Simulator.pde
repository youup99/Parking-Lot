ParkingLot pl;
ArrayList<car> carA = new ArrayList();
ArrayList<car> carB = new ArrayList();
Date d = new Date(0, 0, 0, true);
int timer;
int Timer;
float rate;
int ellapsed;
ParkingStallSection [][] section;
ParkingStall [][] st;
float cost = 0;
float total = 0;
int spot_left = 60;
gate gt;
car first;
ControlPanel ctr;
street str;
boolean occupied;
void setup() {
  size(1000, 1000);
  fill(0, 160, 0);
  stroke(255);
  strokeWeight(5);
  rect(0, 200, 997, 697);
  pl = new ParkingLot();
  str = new street();
  str.drawStreet();
  first = new car(loadImage("Honda Civic.png"));
  timer = millis();
  Timer = millis();
}
void draw() {
  frameRate(50);
  str.drawStreet();
  pl.drawLot();
  ctr = new ControlPanel(d);
  ctr.drawPanel();
  if (millis() > timer) {
    timer = millis();
    d.addMinute();
    ctr.drawTime();
  }

  int r = int(random(4));
  for (car c : carA) c.drawCarIn();
  for (car c : carB) c.drawCarNo();
  if (spot_left!=0)
  {
    if (r!=2)
    {
      if (millis() > Timer + 2500) {
        Timer = millis();
        carA.add(new car(loadImage("Honda Civic.png")));
      }
    }
  }
  if (r==2)
  {
    if (millis()>Timer+2500)
    {
      Timer = millis();
      carB.add(new car(loadImage("Honda Civic.png")));
    }
  }
}