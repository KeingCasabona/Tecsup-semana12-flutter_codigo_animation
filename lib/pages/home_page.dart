import 'dart:math';

import 'package:animation/pages/animation_page.dart';
import 'package:animation/pages/hero_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int flagContainer = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimationApp'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                Hero(
                    tag: 'batman-1',
                    child: Image.asset(
                      'assets/images/batman.jpg',
                      height: 100,
                    )),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HeroPage()));
                  },
                  child: Text('Hero'),
                ),

                SizedBox(height: 20),

                //ANIMATEDALIGN:
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.blue,
                  child: AnimatedAlign(
                    alignment: Alignment.topLeft,
                    duration: Duration(seconds: 2),
                    curve: Curves.bounceOut,
                    child: Image.asset(
                      'assets/images/batman.jpg',
                      height: 50,
                    ),
                  ),
                ),
                SizedBox(height: 20),

                //ANIMATEDCONTAINER:
                GestureDetector(
                  onTap: () {
                    flagContainer = 30 + Random().nextInt(225);
                    setState(() {});
                  },
                  child: AnimatedContainer(
                    curve: Curves.bounceOut,
                    duration: Duration(seconds: 2),
                    height: flagContainer.toDouble(),
                    width: flagContainer.toDouble(),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(
                          flagContainer, flagContainer, flagContainer, 1),
                      borderRadius:
                          BorderRadius.circular(flagContainer.toDouble()),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                //ANIMATEDDCROSSFADE:
                AnimatedCrossFade(
                  firstChild: FlutterLogo(
                    size: 200,
                    style: FlutterLogoStyle.horizontal,
                  ),
                  secondChild: FlutterLogo(
                    size: 200,
                    style: FlutterLogoStyle.stacked,
                  ),
                  crossFadeState: CrossFadeState.showFirst,
                  duration: Duration(seconds: 2),
                  firstCurve: Curves.bounceIn,
                  secondCurve: Curves.bounceOut,
                ),

                //ANIMATEDDEFAULTTEXTSTYLE:
                AnimatedDefaultTextStyle(
                  child: Text('Hola a todos'),
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.red,
                  ),
                  duration: Duration(seconds: 2),
                  curve: Curves.bounceIn,
                ),
                SizedBox(height: 20),

                //ANIMATEDOPACITY:
                AnimatedOpacity(
                  duration: Duration(milliseconds: 1200),
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/batman.jpg',
                    height: 200,
                  ),
                ),
                SizedBox(height: 20),
                AnimatedOpacity(
                  curve: Curves.easeInBack,
                  duration: Duration(milliseconds: 1200),
                  opacity: 1,
                  child: Text(
                      'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum'),
                ),
                SizedBox(height: 20),

                //ANIMATEDPHYSICALMODEL:
                AnimatedPhysicalModel(
                  child: Container(
                    height: 200,
                    width: 200,
                  ),
                  shape: BoxShape.rectangle,
                  elevation: 10,
                  color: Colors.indigo,
                  shadowColor: Colors.black,
                  duration: Duration(milliseconds: 1200),
                  borderRadius: BorderRadius.circular(20),
                ),

                //ANIMATEDPOSITIONED:
                Container(
                  color: Colors.blue,
                  width: 300,
                  height: 300,
                  child: Stack(
                    children: [
                      AnimatedPositioned(
                        bottom: 100,
                        right: 100,
                        child: Container(
                          height: 40,
                          width: 40,
                          color: Colors.greenAccent,
                        ),
                        duration: Duration(milliseconds: 2000),
                        curve: Curves.bounceOut,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AnimationPage()));
                  },
                  child: Text('Animation Page'),
                ),
                SizedBox(height: 200),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
