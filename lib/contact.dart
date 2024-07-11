import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});
  static const IconData language =
      IconData(0xe366, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: const [
        Padding(
          padding: EdgeInsets.all(14),
          child: Text(
            "Contact Details",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        ContactCard(
            leading: Icon(FontAwesomeIcons.github),
            title: "Github",
            subtitle: "CastroClarence"),
        ContactCard(
            leading: Icon(FontAwesomeIcons.facebook),
            title: "Facebook",
            subtitle: "Clarence Joseph Castro"),
        ContactCard(
            leading: Icon(Icons.email),
            title: "Email",
            subtitle: "tengbaroja@gmail.com"),
        ContactCard(
            leading: Icon(Icons.phone),
            title: "Phone Number",
            subtitle: "0993-423-1971"),
      ]),
    );
  }
}

class ContactCard extends StatelessWidget {
  final Icon leading;
  final String title;
  final String subtitle;

  const ContactCard(
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
