import 'dart:async';

import 'package:flutter_web/material.dart';

class IntroBanner extends StatefulWidget {
  const IntroBanner({Key key}) : super(key: key);

  @override
  _IntroBannerState createState() => _IntroBannerState();
}

class _IntroBannerState extends State<IntroBanner> {
  List<Widget> children;
  int keyTick;

  @override
  void initState() {
    super.initState();
    children = [
      _buildTextLabel(
        topLabel: 'HELLO! I\'M',
        bottomLabel: 'DUNG XUAN HO',
      ),
      _buildTextLabel(
        topLabel: 'I\'M FROM HO CHI MINH, VIETNAM',
        bottomLabel: 'A MOBILE DEVELOPER',
      ),
    ];

    keyTick = 0;

    Timer.periodic(const Duration(seconds: 10), (timer) {
      setState(() {
        keyTick = timer.tick % 2;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    screenHeight = screenHeight > 750.0 ? screenHeight : 750.0;

    return Container(
      width: screenWidth,
      height: screenHeight,
      child: Center(
        child: AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          switchInCurve: Curves.easeInOut,
          switchOutCurve: Curves.easeInOut,
          child: Container(
            key: ValueKey(keyTick),
            child: children[keyTick],
          ),
        ),
      ),
    );
  }

  Widget _buildTextLabel({String topLabel, String bottomLabel}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            topLabel,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 30.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            bottomLabel,
            style: TextStyle(
              color: Colors.white,
              fontSize: 60.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 10.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
