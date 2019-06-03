import 'package:com.hoxuandung.portfolio/models/url_info.dart';
import 'package:com.hoxuandung.portfolio/utils/url_launcher.dart';
import 'package:flutter_web/material.dart';

class UrlLauncherButton extends StatelessWidget {
  final UrlInfo contactInfo;
  const UrlLauncherButton({Key key, this.contactInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        onPressed: () {
          launchUrl(contactInfo.url);
        },
        icon: Icon(
          contactInfo.icon,
          color: Colors.white,
          size: 30.0,
        ),
      ),
    );
  }
}