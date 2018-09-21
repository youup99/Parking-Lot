class PriceCalculator {
  int timeStart;
  int timeEnd;
  int weekend;
  int notweekend;
  float currentCost;
  float totalHours;

  PriceCalculator(int x, int y, int z) {
    timeStart = x;
    timeEnd = y;
    weekend = z;
    notweekend = timeEnd - timeStart - weekend;
    cost = notweekend * 3.0 + weekend * 2.0;
    total += cost;
  }
}