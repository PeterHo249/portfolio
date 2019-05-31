import 'package:flutter_web/material.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      color: Colors.white,
      child: Text('Project'),
    );
  }
}
