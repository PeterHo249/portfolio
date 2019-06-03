import 'package:com.hoxuandung.portfolio/models/infomation.dart';
import 'package:com.hoxuandung.portfolio/utils/url_launcher.dart';
import 'package:com.hoxuandung.portfolio/views/url_launcher_button.dart';
import 'package:flutter_web/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    screenHeight = screenHeight > 750.0 ? screenHeight : 750.0;

    return Container(
      width: screenWidth,
      height: screenHeight,
      child: screenWidth > 500.0
          ? _buildWideLayout(context, screenWidth, screenHeight)
          : _buildNarrowLayout(context, screenWidth, screenHeight),
    );
  }

  Widget _buildWideLayout(
    BuildContext context,
    double screenWidth,
    double screenHeight,
  ) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: screenWidth * 0.7,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: IntroductionText(
              width: screenWidth * 0.7,
            ),
          ),
        ),
        Container(
          width: screenWidth * 0.3,
          height: screenHeight * 0.7,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage('img/foreground_photo_1.jpg'),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNarrowLayout(
    BuildContext context,
    double screenWidth,
    double screenHeight,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: screenWidth,
          height: screenHeight * 0.3,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image(
              image: AssetImage('img/foreground_photo_2.jpg'),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          width: screenWidth,
          height: screenHeight * 0.7,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IntroductionText(
              width: screenWidth,
            ),
          ),
        ),
      ],
    );
  }
}

class IntroductionText extends StatelessWidget {
  final double width;
  const IntroductionText({
    Key key,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _buildHeader(context, width),
        _buildDescription(context),
        _buildResumeLink(context),
        _buildSocialLink(context),
      ],
    );
  }

  Widget _buildHeader(BuildContext context, double width) {
    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: <Widget>[
        SizedBox(
          width: width,
          height: 180.0,
          child: Text(
            'About',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: 150.0,
              fontWeight: FontWeight.bold,
              color: Colors.white10,
              letterSpacing: 30.0,
            ),
          ),
        ),
        Text(
          'I\'m Dung Xuan Ho',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            letterSpacing: 5.0,
          ),
        ),
      ],
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        information.description,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildResumeLink(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          launchUrl('assets/resume.pdf');
        },
              child: Text(
          'Check out my resume',
          style: TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialLink(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              'Contact me at:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: information.contactInfomations.map(
              (contextInfo) {
                return UrlLauncherButton(
                  contactInfo: contextInfo,
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}