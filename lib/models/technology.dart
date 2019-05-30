class Technology {
  final String name;
  final String logoUrl;

  Technology({
    this.name,
    this.logoUrl,
  });
}

class TechnologyEnum {
  static final flutter = Technology(
    logoUrl: 'img/flutter.png',
    name: 'Flutter',
  );
  static final swift = Technology(
    logoUrl: 'img/swift.png',
    name: 'Swift 4',
  );
  static final firebase = Technology(
    logoUrl: 'img/firebase.png',
    name: 'Firebase',
  );
  static final js = Technology(
    logoUrl: 'img/js.png',
    name: 'JavaScript',
  );
  static final nodejs = Technology(
    logoUrl: 'img/nodejs.png',
    name: 'NodeJS',
  );
  static final html = Technology(
    logoUrl: 'img/html.png',
    name: 'HTML',
  );
  static final css = Technology(
    logoUrl: 'img/css.png',
    name: 'CSS',
  );
  static final mongodb = Technology(
    logoUrl: 'img/mongodb.png',
    name: 'MongoDB',
  );
  static final expressjs = Technology(
    logoUrl: 'img/express.png',
    name: 'ExpressJS',
  );
  static final xml = Technology(
    logoUrl: 'img/xml.png',
    name: 'XML',
  );
}
