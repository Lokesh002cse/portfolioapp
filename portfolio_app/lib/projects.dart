// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {

  mypro(lang, title, desc, star, githubLink) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: Color(0xff262628),
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                desc,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 10,
                  ),
                  Text(
                    star,
                    style: TextStyle(color: Colors.white70),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: () {
                      launch(githubLink);
                    },
                    child: Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                        ),
                        Text(
                          'GitHub',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text(
          'Projects',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 mypro('FLUTTER', 'Portfolio App', 'Skill & Specialization', '5', "https://github.com/Lokesh002cse/portfolioapp"),
                 mypro('PYTHON', 'Application', 'SIGN LANGUAGE RECOGNITION', '5', "https://github.com/Lokesh002cse/sign-language-recognition-app"),
                 mypro('FLUTTER', 'Clone App', 'Instagram clone ', '5', "https://github.com/Lokesh002cse/instagram-clone"),
                
              ]
            )),
      ),
    );
  }
}
