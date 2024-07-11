import 'package:flutter/material.dart';
import 'package:flutter_application_1/contact.dart';
import 'package:flutter_application_1/education.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/skills.dart';
import 'package:flutter_application_1/talents.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DefaultTabController(length: 5, child: MainPage()),
      theme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio"),
      ),
      body: const TabBarView(children: [
        ProfilePage(),
        EducationPage(),
        SkillsPage(),
        InterestPage(),
        ContactPage()
      ]),
      bottomNavigationBar: const TabBar(
        tabs: [
          Tab(
            icon: Icon(Icons.person),
            text: "Profile",
          ),
          Tab(
            icon: Icon(Icons.school),
            text: "Education",
          ),
          Tab(
            icon: Icon(Icons.build),
            text: "Skills",
          ),
          Tab(
            icon: Icon(Icons.interests),
            text: "Interests",
          ),
          Tab(
            icon: Icon(Icons.contacts),
            text: "Contact",
          ),
        ],
        labelStyle: TextStyle(fontSize: 9),
      ),
    );
  }
}
