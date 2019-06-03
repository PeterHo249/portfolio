class Technology {
  final String name;
  final String logoUrl;
  final String referenceUrl;

  Technology({
    this.name,
    this.logoUrl,
    this.referenceUrl,
  });
}

class TechnologyEnum {
  static final flutter = Technology(
    logoUrl: 'img/flutter.png',
    name: 'Flutter',
    referenceUrl: 'https://flutter.dev/',
  );
  static final swift = Technology(
    logoUrl: 'img/swift.png',
    name: 'Swift 4',
    referenceUrl: 'https://swift.org/',
  );
  static final firebase = Technology(
    logoUrl: 'img/firebase.png',
    name: 'Firebase',
    referenceUrl: 'https://firebase.google.com/',
  );
  static final js = Technology(
    logoUrl: 'img/js.png',
    name: 'JavaScript',
    referenceUrl: 'https://www.javascript.com/',
  );
  static final nodejs = Technology(
    logoUrl: 'img/nodejs.png',
    name: 'NodeJS',
    referenceUrl: 'https://nodejs.org/en/',
  );
  static final html = Technology(
    logoUrl: 'img/html.png',
    name: 'HTML',
    referenceUrl: 'https://html.com/',
  );
  static final css = Technology(
    logoUrl: 'img/css.png',
    name: 'CSS',
    referenceUrl: 'https://developer.mozilla.org/en-US/docs/Web/CSS',
  );
  static final mongodb = Technology(
    logoUrl: 'img/mongodb.png',
    name: 'MongoDB',
    referenceUrl: 'https://www.mongodb.com/',
  );
  static final expressjs = Technology(
    logoUrl: 'img/express.png',
    name: 'ExpressJS',
    referenceUrl: 'https://expressjs.com/',
  );
  static final xml = Technology(
    logoUrl: 'img/xml.png',
    name: 'XML',
    referenceUrl: 'https://www.xml.com/',
  );
}
