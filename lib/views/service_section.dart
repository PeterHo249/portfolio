import 'dart:developer';

import 'package:flutter_web/material.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'My Service',
              style: TextStyle(
                color: Colors.white,
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              ServiceTile(
                imageUrl: 'img/dev.png',
                descriptions: [
                  'Mobile Developer',
                  'Flutter',
                  'Swift',
                ],
              ),
              ServiceTile(
                imageUrl: 'img/api.png',
                descriptions: [
                  'Back-end API',
                  'Node.JS',
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ServiceTile extends StatelessWidget {
  final String imageUrl;
  final List<String> descriptions;

  const ServiceTile({
    Key key,
    this.imageUrl,
    this.descriptions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 100.0,
            height: 100.0,
            child: Image(
              image: AssetImage(imageUrl),
              fit: BoxFit.contain,
            ),
          ),
        ),
        ...descriptions.map(
          (description) {
            return Text(
              description,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            );
          },
        ).toList(),
      ],
    );
  }
}
