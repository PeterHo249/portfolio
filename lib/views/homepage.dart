import 'package:com.hoxuandung.portfolio/views/about_section.dart';
import 'package:com.hoxuandung.portfolio/views/intro_banner.dart';
import 'package:com.hoxuandung.portfolio/views/project_section.dart';
import 'package:com.hoxuandung.portfolio/views/service_section.dart';
import 'package:flutter_web/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: _buildHomeBody(context),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text('App bar'),
      backgroundColor: Colors.black54,
      elevation: 0.0,
    );
  }

  Widget _buildHomeBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        IntroBanner(),
        AboutSection(),
        ServiceSection(),
        ProjectSection(),
      ],
    );
  }
}
