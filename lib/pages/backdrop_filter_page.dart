import 'dart:ui';

import 'package:flutter/material.dart';

class BackDropFilterPage extends StatefulWidget {
  const BackDropFilterPage({super.key});

  @override
  State<BackDropFilterPage> createState() => _BackDropFilterPageState();
}

class _BackDropFilterPageState extends State<BackDropFilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
                          Image.asset('assets/IMG_0601.jpeg'),

          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 15.0,
              sigmaY: 15.0,
            ),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.red
              ),
            ),
          ),
          BackdropFilter(filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), child: Container(height: 100, width: 100,child: Container(color: Colors.yellow,),), )
        ],
      ),
    );
  }
}