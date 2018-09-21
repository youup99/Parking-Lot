class Date {
  final String [] days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
  int today;
  int hour;
  int shour;
  int minute;
  boolean before_noon;
  Date(int d, int h, int m, boolean beforeNoon) {
    today = d % 7;
    hour = h % 12;
    minute = m % 60;
    before_noon = beforeNoon;
    if (today == 5 || today == 6) {
      rate = 2.0;
    } else {
      rate = 3.0;
    }
  }
  Date(Date d) {
    today = d.today;
    hour = d.hour;
    minute = d.minute;
    before_noon = d.before_noon;
  }

  void addHour() {
    hour = hour + 1;
    ellapsed++;
    if (hour > 12) {
      hour = hour % 12;
    }
  }

  void addDay() {
    today = today + 1;
    if (today > 6) {
      today = today % 7;
    }
    if (today == 5 || today == 6) {
      rate = 2.0;
    } else {
      rate = 3.0;
    }
  }

  void addsHour() {
    shour = shour + 1;
    if (shour > 24) {
      shour = shour % 24;
    }
    if (shour == 12) {
      before_noon = false;
    }
    if (shour == 24) {
      before_noon = true;
      addDay();
    }
  }
  void addMinute() {
    minute = minute + 1;
    if (minute > 59) {
      minute = minute % 60;
      addsHour();
      addHour();
    }
  }

  String toString() {
    String date = days[today];
    // Format Hour
    if (hour == 0) {
      hour = 12;
    }
    if (hour < 10) {
      date += " 0" + hour;
    } else {
      date += " " + hour;
    }
    // Format Minute
    if (minute < 10) {
      date += ":0" + minute;
    } else {
      date += ":" + minute;
    }
    // Format Time of Day
    if (before_noon) {
      date += "AM";
    } else {
      date += "PM";
    }
    return date;
  }
  boolean equal(Date date) {
    if (this.today != date.today && this.hour != date.hour && this.minute != date.minute && this.before_noon != date.before_noon)
      return false;
    return true;
  }
}