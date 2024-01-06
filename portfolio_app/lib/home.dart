// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, non_constant_identifier_names, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:url_launcher/url_launcher.dart';


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final Shader headerGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 1, 242, 255),
    Color.fromARGB(255, 33, 170, 97)
  ]).createShader(Rect.fromLTWH(0, 0, 200.0, 70.0));

  final Shader highlightGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 43, 255, 1),
    Color.fromARGB(255, 255, 255, 0)
  ]).createShader(Rect.fromLTWH(0, 0, 200.0, 70.0));

  final Shader OverallTextGradient = LinearGradient(
    colors: <Color>[
      Color(0xff1f005c),
      Color(0xff5b0060),
      Color(0xff870160),
      Color(0xffac255e),
      Color(0xffca485c),
      Color(0xffe16b5c),
      Color(0xfff39060),
     
    ],
  ).createShader(Rect.fromLTWH(0, 0, 200.0, 70.0));

  myskills(num, type) {
    return Row(
      children: [
        Text(
          num,
          style: TextStyle(
              
              fontSize: 30,
              fontWeight: FontWeight.bold,
              foreground: Paint()..shader = OverallTextGradient),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(type),
        )
      ],
    );
  }

  myspecialization(icon, text) {
  return GestureDetector(
    onTap: () {
      launchUrl(Uri.parse('https://github.com/Lokesh002cse'));
    },
    child: Container(
      width: 105,
      height: 115,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color.fromARGB(255, 30, 31, 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                icon,
                color: Colors.white,
              ),
              SizedBox(height: 10),
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          icon: Icon(Icons.menu),
          color: Color.fromARGB(0, 0, 0, 0),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: TextButton(
                  child:
                      Text('Projects', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.pushNamed(context, 'projects');
                  }),
              value: 1,
            ),
            PopupMenuItem(
              child: TextButton(
                  child:
                      Text('About Me', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.pushNamed(context, 'about');
                  }),
              value: 2,
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.grey,
              const Color.fromARGB(163, 0, 0, 0),
            ],
          ),
        ),
        child: SlidingSheet(
          elevation: 8,
          cornerRadius: 16,
          snapSpec: const SnapSpec(
            // Enable snapping. This is true by default.
            snap: true,
            // Set custom snapping points.
            snappings: [0.4, 0.7, 1.0],
            // Define to what the snappings relate to. In this case,
            // the total available space that the sheet can expand to.
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          // The body widget will be displayed under the SlidingSheet
          // and a parallax effect can be applied to it.
          body: Container(
            child: Stack(children: [
              Container(
                margin: EdgeInsets.all(40),
                child: ShaderMask(
                  shaderCallback: (bound) {
                    return LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.white, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, bound.width, bound.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assets/img.png',
                    height: 400,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.49),
                child: Column(children: [
                  Text(
                    'Lokesh Kumar',
                    style:
                        TextStyle(color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                        
                        ),
                  ),
                  SizedBox(
                    height: 4,

                  ),
                  Text(
                    'Software Developer',
                    style:
                        TextStyle(color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal
                        
                        
                        ),
                  )
                ]),
              )
            ]),
          ),
          builder: (context, state) {
            // This is the content of the sheet that will get
            // scrolled, if the content is bigger than the available
            // height of the sheet.
            return Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myskills('5', "projects"),
                        myskills('4+', "technologies"),
                        myskills('3', "Internships"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Specialized In',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myspecialization(FontAwesomeIcons.github, 'GitHub'),
                          myspecialization(FontAwesomeIcons.python, 'Python'),
                          myspecialization(
                              FontAwesomeIcons.database, 'Database'),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myspecialization(FontAwesomeIcons.android, 'Android'),
                          myspecialization(FontAwesomeIcons.c, 'C'),
                          myspecialization(FontAwesomeIcons.docker, 'DOCKER'),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ])
                  ],
                ));
          },
        ),
      ),
    );
  }
}
