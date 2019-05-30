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
    name: 'Flutter',
  );
  static final swift = Technology(
    name: 'Swift 4',
  );
  static final firebase = Technology(
    name: 'Firebase',
  );
  static final js = Technology(
    name: 'JavaScript',
  );
  static final nodejs = Technology(
    name: 'NodeJS',
  );
  static final html = Technology(
    name: 'HTML',
  );
  static final css = Technology(
    name: 'CSS',
  );
  static final mongodb = Technology(
    name: 'MongoDB',
  );
  static final expressjs = Technology(
    name: 'ExpressJS',
  );
  static final xml = Technology(
    name: 'XML',
  );
}
