import 'package:com.hoxuandung.portfolio/utils/action_data.dart';
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

  final keys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

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
      title: InkWell(
        onTap: () {
          _scrollController.animateTo(
            0.0,
            curve: Curves.easeInOut,
            duration: const Duration(seconds: 1),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(
                'img/avatar.jpg',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Dung Xuan Ho',
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black54,
      elevation: 0.0,
      actions: ActionDataEnum.actionDatas
          .asMap()
          .map(
            (i, actionData) {
              return MapEntry(
                i,
                _buildAppBarAction(
                  context,
                  actionData,
                  keys[i],
                ),
              );
            },
          )
          .values
          .toList(),
    );
  }

  Widget _buildAppBarAction(
    BuildContext context,
    ActionData actionData,
    GlobalKey key,
  ) {
    return InkWell(
      onTap: () {
        Scrollable.ensureVisible(
          key.currentContext,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: MediaQuery.of(context).size.width > 500.0
              ? Text(actionData.title)
              : Icon(actionData.icon),
        ),
      ),
    );
  }

  Widget _buildHomeBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        IntroBanner(),
        AboutSection(
          key: keys[0],
        ),
        ServiceSection(
          key: keys[1],
        ),
        ProjectSection(
          key: keys[2],
        ),
      ],
    );
  }
}
