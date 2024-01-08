// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {


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
      Color.fromARGB(255, 0, 255, 174)
    ],
  ).createShader(Rect.fromLTWH(0, 0, 200.0, 70.0));

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(163, 0, 0, 0),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
     body: Container(
            child: Stack(children: [
              Container(
                margin: EdgeInsets.all(40),
                child: ShaderMask(
                  shaderCallback: (bound) {
                    return LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black, Colors.transparent])
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
                    top: MediaQuery.of(context).size.height * 0.55),
                child: Column(children: [
                  Text(
                    'Hello I am',
                    style:
                        TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                        
                        ),
                  ),
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
                  ),
                  SizedBox(
                    height: 20,

                  ),
                  SizedBox(
                    width: 120,
                    child: TextButton(
                      onPressed: ((){
                        Navigator.pushNamed(context, 'home');

                      }) ,
                      child: Text('My Skills'),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                     
                    ),
                  ),
                   SizedBox(
                    height: 20,

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
     
                    ],

                  )

                ]),
              )
            ]),
          ),
      );
  }
}
