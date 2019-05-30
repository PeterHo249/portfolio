import 'package:com.hoxuandung.portfolio/models/contact.dart';
import 'package:com.hoxuandung.portfolio/models/education.dart';
import 'package:com.hoxuandung.portfolio/models/project.dart';
import 'package:com.hoxuandung.portfolio/models/technology.dart';
import 'package:flutter_web/material.dart';

class Information {
  final String firstName;
  final String lastName;
  final String middleName;
  final String avatarUrl;
  final List<Contact> contactInfomations;
  final List<Education> educationInfomations;
  final List<Technology> skills;
  final List<Project> projects;

  Information({
    this.firstName,
    this.lastName,
    this.middleName,
    this.avatarUrl,
    this.contactInfomations,
    this.educationInfomations,
    this.skills,
    this.projects,
  });

  String get name => [firstName, middleName, lastName].join(' ');
}

final contacts = <Contact>[
  Contact(
    icon: Icons.email,
    displayString: 'peterhoxuandung@outlook.com',
    url: 'mailto:peterhoxuandung@outlook.com',
  ),
  Contact(
    icon: Icons.phone,
    displayString: '+84 943 417821',
    url: 'tel:+84943417821',
  ),
  Contact(
    icon: Icons.location_on,
    displayString: 'Ho Chi Minh, Viet Nam',
  ),
  Contact(
    displayString: 'linkedin.com/in/peterhoxuandung/',
    url: 'https://www.linkedin.com/in/peterhoxuandung/',
  ),
  Contact(
    displayString: 'github.com/PeterHo249',
    url: 'https://github.com/PeterHo249',
  ),
  Contact(
    displayString: '+84943417821',
    url: 'skype:dragonking1131?call',
  ),
];

final educationInfomations = <Education>[
  Education(
    degree: 'Bachelor of Software Engineering',
    university: 'HCMVNU - University of Science',
    start: DateTime(2015, 9),
    end: DateTime(2019, 5),
    gpa: 7.96,
  ),
];

final skills = <Technology>[
  TechnologyEnum.flutter,
  TechnologyEnum.swift,
  TechnologyEnum.firebase,
  TechnologyEnum.js,
  TechnologyEnum.nodejs,
  TechnologyEnum.html,
  TechnologyEnum.css,
  TechnologyEnum.mongodb,
];

final projects = <Project>[
  Project(
    name: 'Fast Store',
    type: ProjectTypeEnum.freelance,
    description:
        'Built front-end for department store. Using Firebase to push notiﬁcation.',
    start: DateTime(2019, 4),
    end: DateTime(2019, 5),
    tech: [
      TechnologyEnum.flutter,
      TechnologyEnum.firebase,
    ],
  ),
  Project(
    name: 'Success Hunter',
    type: ProjectTypeEnum.thesis,
    description:
        'Developed an application to support self development process using Gamiﬁcation method.',
    start: DateTime(2018, 9),
    end: DateTime(2019, 4),
    tech: [
      TechnologyEnum.flutter,
      TechnologyEnum.firebase,
    ],
    projectUrl: <String>[
      'https://itunes.apple.com/us/app/success-hunter/id1451431732?mt=8',
      'https://play.google.com/store/apps/details?id=com.hoxuandung.successhunter',
    ],
  ),
  Project(
    name: 'Kanbanize',
    type: ProjectTypeEnum.course,
    description:
        'Developed an application to manage todo list with Kanban method on iOS.',
    start: DateTime(2018, 4),
    end: DateTime(2018, 7),
    tech: [
      TechnologyEnum.swift,
    ],
    projectUrl: <String>['https://github.com/PeterHo249/KANBANize'],
  ),
  Project(
    name: 'Rex Shop',
    type: ProjectTypeEnum.course,
    description: 'Built a cameras and accessories shop website.',
    start: DateTime(2018, 4),
    end: DateTime(2018, 7),
    tech: [
      TechnologyEnum.expressjs,
      TechnologyEnum.mongodb,
    ],
    projectUrl: <String>[
      'https://github.com/PeterHo249/rexshop',
    ],
  ),
  Project(
    name: 'Yame Shop',
    type: ProjectTypeEnum.course,
    description:
        'Developed a clothes shop website with pure NodeJS and xml ﬁle.',
    start: DateTime(2018, 4),
    end: DateTime(2018, 7),
    tech: [
      TechnologyEnum.nodejs,
      TechnologyEnum.xml,
    ],
    projectUrl: <String>[
      'https://github.com/PeterHo249/yameshop',
    ],
  ),
];

final information = Information(
  firstName: 'Dung',
  middleName: 'Xuan',
  lastName: 'Ho',
  contactInfomations: contacts,
  educationInfomations: educationInfomations,
  skills: skills,
  projects: projects,
);
