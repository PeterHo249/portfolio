import 'package:com.hoxuandung.portfolio/views/homepage.dart';
import 'package:flutter_web/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  final theme = ThemeData(
    backgroundColor: Colors.black54,
    scaffoldBackgroundColor: Colors.black87,
    fontFamily: 'NotoSansHK',
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
