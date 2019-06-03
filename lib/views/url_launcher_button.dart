import 'package:com.hoxuandung.portfolio/models/url_info.dart';
import 'package:com.hoxuandung.portfolio/utils/url_launcher.dart';
import 'package:flutter_web/material.dart';

class UrlLauncherButton extends StatelessWidget {
  final UrlInfo urlInfo;
  const UrlLauncherButton({Key key, this.urlInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        onPressed: () {
          launchUrl(urlInfo.url);
        },
        icon: Icon(
          urlInfo.icon,
          color: Colors.white,
          size: 30.0,
        ),
      ),
    );
  }
}