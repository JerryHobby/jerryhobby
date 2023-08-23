import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/projects.dart';
import 'pages/summary.dart';
import 'pages/contact.dart';
import 'pages/download.dart';
import 'pages/education.dart';
import 'pages/experience.dart';
import 'pages/objectives.dart';
import 'pages/skills.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Jerry Hobby',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  Widget home = Home();
  Widget summary = Summary();
  Widget contact = Contact();
  Widget objectives = Objectives();
  Widget experience = Experience();
  Widget education = Education();
  Widget projects = Projects();
  Widget download = Download();
  Widget skills = Skills();

  late Widget currentPage;

  MyAppState() {
    currentPage = home;
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: currentPage,
    );
  }

  drawer() {
    return Drawer(
      width: 130,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.fromLTRB(0, 30.0, 0, 0),
            margin: EdgeInsets.zero,

            child: Image(image: AssetImage('assets/images/jerrytoon.png')),
            decoration: BoxDecoration(

              color: Colors.indigo[200],
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              setState(() {
                currentPage = home;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Contact'),
            onTap: () {
              setState(() {
                currentPage = contact;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Objectives'),
            onTap: () {
              setState(() {
                currentPage = objectives;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Summary'),
            onTap: () {
              setState(() {
                currentPage = summary;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Skills'),
            onTap: () {
              setState(() {
                currentPage = skills;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Experience'),
            onTap: () {
              setState(() {
                currentPage = experience;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Education'),
            onTap: () {
              setState(() {
                currentPage = education;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Projects'),
            onTap: () {
              setState(() {
                currentPage = projects;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Download'),
            onTap: () {
              setState(() {
                currentPage = download;
              });
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  appBar() {
    return AppBar(
      backgroundColor: Colors.indigo[900],
      foregroundColor: Colors.white,
      title: Text('Jerry Hobby'),
    );
    // return
  }
}
