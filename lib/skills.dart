import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_symbols_icons/symbols.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Center(
            child: Text("Skills",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            child: const Text(
              "My diverse set of technical and non-technical skills that make me a well-rounded professional",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Technical Skills",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              SkillIcon(label: "HTML", teng: Icons.html),
              SkillIcon(label: "CSS", teng: Icons.css),
              SkillIcon(label: "Javascript", teng: Icons.javascript),
              SkillIcon(label: "Python", teng: FontAwesomeIcons.python),
              SkillIcon(label: "ReactJS", teng: FontAwesomeIcons.react),
              SkillIcon(label: "SQL", teng: FontAwesomeIcons.database),
              SkillIcon(label: "Dart", teng: Icons.code),
              SkillIcon(label: "Flutter", teng: Symbols.flutter)
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Non-Technical Skills",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const NTCard(
              leading: Icon(Icons.person_pin_rounded),
              title: "Communication",
              subtitle: "Excellent verbal and written communication skills."),
          const NTCard(
              leading: Icon(Icons.report_problem),
              title: "Problem Solving",
              subtitle: "Adept at identifying and analyzing problems."),
          const NTCard(
              leading: Icon(Icons.adjust),
              title: "Adaptability",
              subtitle:
                  "Flexible and able to quickly adjust to changing circumstances, new technologies, and evolving business requirements.")
        ],
      ),
    );
  }
}

class SkillIcon extends StatelessWidget {
  final String label;
  final IconData teng;

  const SkillIcon({required this.label, required this.teng, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          child: Icon(
            teng,
            size: 30,
          ),
        ),
        Text(label)
      ],
    );
  }
}

class NTCard extends StatelessWidget {
  final Icon leading;
  final String title;
  final String subtitle;

  const NTCard(
      {required this.leading,
      required this.title,
      required this.subtitle,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: ListTile(
        leading: leading,
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
