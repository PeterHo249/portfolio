import 'package:flutter_web/material.dart';

class IntroBanner extends StatelessWidget {
  const IntroBanner({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight,
      child: Text('Intro'),
    );
  }
}
