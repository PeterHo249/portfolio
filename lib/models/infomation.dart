import 'package:com.hoxuandung.portfolio/models/education.dart';
import 'package:com.hoxuandung.portfolio/models/project.dart';
import 'package:com.hoxuandung.portfolio/models/technology.dart';
import 'package:com.hoxuandung.portfolio/models/url_info.dart';
import 'package:com.hoxuandung.portfolio/utils/social_icon_icons.dart';
import 'package:flutter_web/material.dart';

class Information {
  final String firstName;
  final String lastName;
  final String middleName;
  final String title;
  final String description;
  final String avatarUrl;
  final List<UrlInfo> contactInfomations;
  final List<Education> educationInfomations;
  final List<Technology> skills;
  final List<Project> projects;

  Information({
    this.firstName,
    this.lastName,
    this.middleName,
    this.avatarUrl,
    this.title,
    this.description,
    this.contactInfomations,
    this.educationInfomations,
    this.skills,
    this.projects,
  });

  String get name => [firstName, middleName, lastName].join(' ');
}

final contacts = <UrlInfo>[
  UrlInfo(
    icon: Icons.email,
    displayString: 'peterhoxuandung@outlook.com',
    url: 'mailto:peterhoxuandung@outlook.com',
  ),
  UrlInfo(
    icon: Icons.phone,
    displayString: '+84 943 417821',
    url: 'tel:+84943417821',
  ),
  UrlInfo(
    icon: SocialIcon.linkedin,
    displayString: 'linkedin.com/in/peterhoxuandung/',
    url: 'https://www.linkedin.com/in/peterhoxuandung/',
  ),
  UrlInfo(
    icon: SocialIcon.github_circled,
    displayString: 'github.com/PeterHo249',
    url: 'https://github.com/PeterHo249',
  ),
  UrlInfo(
    icon: SocialIcon.skype,
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
    name: 'Dung\'s Portfolio',
    type: ProjectTypeEnum.pet,
    description: 'Created a portfolio for me using Flutter Web technical preview.',
    start: DateTime(2019, 6),
    end: DateTime(2019, 6),
    tech: [TechnologyEnum.flutter,],
    projectUrl: [
      UrlInfo(
        icon: SocialIcon.github_circled,
        displayString: 'Repository',
        url: 'https://github.com/PeterHo249/peterho249.github.io',
      ),
      UrlInfo(
        icon: Icons.web,
        displayString: 'Portfolio website',
        url: 'https://peterho249.github.io',
      ),
    ],
  ),
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
    projectUrl: [
      UrlInfo(
        icon: SocialIcon.apple,
        displayString: 'Get on App Store',
        url: 'https://itunes.apple.com/us/app/success-hunter/id1451431732?mt=8',
      ),
      UrlInfo(
        icon: SocialIcon.android,
        displayString: 'Get on Play Store',
        url:
            'https://play.google.com/store/apps/details?id=com.hoxuandung.successhunter',
      ),
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
    projectUrl: [
      UrlInfo(
        icon: SocialIcon.github_circled,
        displayString: 'Repository',
        url: 'https://github.com/PeterHo249/KANBANize',
      ),
    ],
  ),
  Project(
    name: 'Rex Shop',
    type: ProjectTypeEnum.course,
    description: 'Built a camera and accessory shop website.',
    start: DateTime(2018, 4),
    end: DateTime(2018, 7),
    tech: [
      TechnologyEnum.expressjs,
      TechnologyEnum.mongodb,
    ],
    projectUrl: [
      UrlInfo(
        icon: SocialIcon.github_circled,
        displayString: 'Repository',
        url: 'https://github.com/PeterHo249/rexshop',
      ),
    ],
  ),
  Project(
    name: 'Yame Shop',
    type: ProjectTypeEnum.course,
    description:
        'Developed a cloth shop website with pure NodeJS and xml ﬁle.',
    start: DateTime(2018, 4),
    end: DateTime(2018, 7),
    tech: [
      TechnologyEnum.nodejs,
      TechnologyEnum.xml,
    ],
    projectUrl: [
      UrlInfo(
        icon: SocialIcon.github_circled,
        displayString: 'Repository',
        url: 'https://github.com/PeterHo249/yameshop',
      ),
    ],
  ),
];

final information = Information(
  firstName: 'Dung',
  middleName: 'Xuan',
  lastName: 'Ho',
  title: 'Mobile Developer',
  description:
      'Highly responsibility, willingness to learn new things, independent working and positive teamwork attitudes. With the knowledge and skills which I learnt in university and the experience of Flutter, Swift, I want to become part of your mobile development team to create products together.',
  contactInfomations: contacts,
  educationInfomations: educationInfomations,
  skills: skills,
  projects: projects,
);
