
enum Day {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday
}

void main() {

  Day today = Day.Monday;


  switch (today) {
    case Day.Saturday:
    case Day.Sunday:
      print("${today.name} is a Weekend");
      break;

    default:
      print("${today.name} is a Weekday");
  }
}