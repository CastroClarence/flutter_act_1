import 'package:flutter/material.dart';

class InterestPage extends StatefulWidget {
  const InterestPage({super.key});

  @override
  State<InterestPage> createState() => _InterestPageState();
}

class _InterestPageState extends State<InterestPage> {
  List<bool> favorite = List<bool>.filled(8, true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(14),
            child: Text(
              "Interests",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                MyActionChip(label: "Database Management"),
                MyActionChip(label: "Web Programming"),
                MyActionChip(label: "Software Development"),
                MyActionChip(label: "Software Engineering"),
                MyActionChip(label: "Data Visualization"),
                Divider()
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(14),
            child: Text(
              "Specializations",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SpecializationCard(
              leading: Icon(Icons.web),
              title: "Full-Stack Development",
              subtitle:
                  "Proficient in building end-to-end web applications using modern frameworks and technologies."),
          SpecializationCard(
              leading: Icon(Icons.data_object),
              title: "Data Science",
              subtitle:
                  "Exeperienced in data analysis, and creating data-driven solutions."),
          SpecializationCard(
              leading: Icon(Icons.phone_android),
              title: "Mobile App Development",
              subtitle:
                  "Experienced in building cross-platform mobile applications using flutter")
        ],
      ),
    );
  }
}

class MyActionChip extends StatefulWidget {
  final String label;

  const MyActionChip({super.key, required this.label});

  @override
  State<MyActionChip> createState() => _MyActionChipState();
}

class _MyActionChipState extends State<MyActionChip> {
  bool favorite = true;

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: Text(widget.label),
      avatar: Icon(favorite ? Icons.favorite : Icons.favorite_border),
      onPressed: () {
        setState(() {
          favorite = !favorite;
        });
      },
    );
  }
}

class SpecializationCard extends StatelessWidget {
  final Icon leading;
  final String title;
  final String subtitle;

  const SpecializationCard(
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
