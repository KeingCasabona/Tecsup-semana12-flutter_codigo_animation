import 'package:animation/pages/hero_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
