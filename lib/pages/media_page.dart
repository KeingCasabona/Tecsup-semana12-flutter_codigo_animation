import 'package:animation/utils/responsive.dart';
import 'package:flutter/material.dart';

class MediaPage extends StatefulWidget {
  const MediaPage({super.key});

  @override
  State<MediaPage> createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery'),
      ),
      body: Column(
        children: [
          Container(
            //height: Responsive(context).hp(20),
            //width: Responsive(context).wp(20),

            height: Responsive.pHeight(context, 0.2),
            width: Responsive.pWidth(context, 0.9),
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
