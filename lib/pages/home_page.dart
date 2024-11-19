import 'dart:math';

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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
