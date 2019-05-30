import 'package:com.hoxuandung.portfolio/models/technology.dart';

class Project {
  final String name;
  final String type;
  final String description;
  final List<Technology> tech;
  final List<String> projectUrl;
  final DateTime start;
  final DateTime end;

  Project({
    this.name,
    this.type,
    this.description,
    this.tech,
    this.projectUrl,
    this.start,
    this.end,
  });

  String get startTime => start.month.toString() + '/' + start.year.toString();
  String get endTime => end.month.toString() + '/' + end.year.toString();
}

class ProjectTypeEnum {
  static final pet = 'Pet project';
  static final freelance = 'Freelance project';
  static final course = 'Course project';
  static final thesis = 'Thesis project';
}
