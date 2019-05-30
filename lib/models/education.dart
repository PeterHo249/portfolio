class Education {
  final String degree;
  final String university;
  final DateTime start;
  final DateTime end;
  final double gpa;

  Education({
    this.degree,
    this.university,
    this.start,
    this.end,
    this.gpa,
  });

  String get startTime => start.month.toString() + '/' + start.year.toString();
  String get endTime => end.month.toString() + '/' + end.year.toString();
}
