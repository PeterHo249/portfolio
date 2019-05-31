import 'package:flutter_web/material.dart';

class ActionData {
  final IconData icon;
  final String title;

  ActionData({this.icon, this.title});
}

class ActionDataEnum {
  static final about = ActionData(
    title: 'About',
    icon: Icons.person_pin,
  );
  static final service = ActionData(
    icon: Icons.info_outline,
    title: 'Service',
  );
  static final project = ActionData(
    icon: Icons.assignment_turned_in,
    title: 'Projects',
  );

  static final actionDatas = [
    about,
    service,
    project,
  ];
}
