import 'package:com.hoxuandung.portfolio/models/infomation.dart';
import 'package:com.hoxuandung.portfolio/models/project.dart';
import 'package:com.hoxuandung.portfolio/views/url_launcher_button.dart';
import 'package:flutter_web/material.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'My Projects',
              style: TextStyle(
                color: Colors.white,
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ProjectList(
            projects: information.projects,
            width: screenWidth,
          ),
        ],
      ),
    );
  }
}

class ProjectList extends StatelessWidget {
  final List<Project> projects;
  final double width;

  const ProjectList({
    Key key,
    this.projects,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: projects
          .asMap()
          .map((index, project) {
            return MapEntry(
              index,
              ProjectTile(
                project: project,
                isEvenPositon: index % 2 == 0,
                width: width,
              ),
            );
          })
          .values
          .toList(),
    );
  }
}

class ProjectTile extends StatelessWidget {
  final Project project;
  final bool isEvenPositon;
  final double width;

  ProjectTile({
    Key key,
    this.project,
    this.isEvenPositon,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 300.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: isEvenPositon
            ? _buildEvenLayout(context, width)
            : _buildOddLayout(context, width),
      ),
    );
  }

  List<Widget> _buildEvenLayout(BuildContext context, double width) {
    return [
      _buildDatePart(context, width),
      _buildTimeline(context),
      _buildDescriptionPart(context, width),
    ];
  }

  List<Widget> _buildOddLayout(BuildContext context, double width) {
    return [
      _buildDescriptionPart(context, width),
      _buildTimeline(context),
      _buildDatePart(context, width),
    ];
  }

  Widget _buildDatePart(BuildContext context, double width) {
    return Container(
      width: width / 2 - 30.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:
            isEvenPositon ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            '${project.startTime} - ${project.endTime}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          Text(
            project.type,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          if (project.projectUrl != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: project.projectUrl.map((urlInfo) {
                return UrlLauncherButton(
                  urlInfo: urlInfo,
                );
              }).toList(),
            ),
        ],
      ),
    );
  }

  Widget _buildTimeline(BuildContext context) {
    return Container(
      width: 40.0,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            color: Colors.white12,
            width: 5.0,
          ),
          Icon(
            Icons.radio_button_checked,
            color: Colors.white,
            size: 20.0,
          ),
        ],
      ),
    );
  }

  Widget _buildDescriptionPart(BuildContext context, double width) {
    return Container(
      width: width / 2 - 30.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:
            isEvenPositon ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              project.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            project.description,
            textAlign: isEvenPositon ? TextAlign.left : TextAlign.right,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: project.tech.map((tech) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 70.0,
                  height: 70.0,
                  child: Image(
                    image: AssetImage(tech.logoUrl),
                    fit: BoxFit.contain,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
