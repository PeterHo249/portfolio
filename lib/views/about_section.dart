import 'package:flutter_web/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight,
      child: Text('About'),
    );
  }
}
