import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(14),
            child: Text(
              "Education Timeline",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          EducationCard(
              title: "College - Bachelor of Science in Information Technology",
              leading: Icon(Icons.school),
              subtitle: "Batangas State University \n2021-Present"),
          EducationCard(
              title: "Senior Highschool - STEM Strand",
              leading: Icon(Icons.school),
              subtitle: "St. Joseph Academy \n2019-2021"),
          EducationCard(
              title: "Junior Highschoool",
              leading: Icon(Icons.school),
              subtitle: "St. Joseph Academy \n2015-2019"),
          EducationCard(
              title: "Elementary School",
              leading: Icon(Icons.school),
              subtitle: "St. Anthony Montessori \n2009-2015"),
          Padding(
            padding: EdgeInsets.all(14),
            child: Text(
              "Achievements",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          EducationCard(
            title: "Dean's List",
            leading: Icon(Icons.emoji_events),
            subtitle: ("Recognized for academic excellence\n2021-Present"),
          )
        ],
      ),
    );
  }
}

class EducationCard extends StatelessWidget {
  final Icon leading;
  final String title;
  final String subtitle;

  const EducationCard(
      {super.key,
      required this.title,
      required this.leading,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        child: ListTile(
          leading: leading,
          title: Text(title),
          subtitle: Text(subtitle),
        ),
      ),
    );
  }
}
