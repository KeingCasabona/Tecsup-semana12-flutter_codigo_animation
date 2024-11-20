import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _pruebaAnimationController;
  late Animation _pruebaAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _pruebaAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    );
    _pruebaAnimation = ColorTween(
      begin: Colors.red,
      end: Colors.blue,
    ).animate(_pruebaAnimationController);

    _pruebaAnimationController.forward();

    _pruebaAnimationController.addListener(() {
      setState(() {});
      //print(_pruebaAnimationController.value);
      print(_pruebaAnimation.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimationApp'),
      ),
      body: Center(
        child: AnimatedBuilder(
            animation: _pruebaAnimation,
            builder: (BuildContext context, _) {
              return IconButton(
                onPressed: () {
                  //_pruebaAnimationController.forward();
                },
                icon: Icon(
                  Icons.ac_unit,
                  size: 200,
                ),
                color: _pruebaAnimation.value,
              );
            }),
      ),
    );
  }
}
