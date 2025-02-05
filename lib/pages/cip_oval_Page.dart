import 'package:flutter/material.dart';

class CipOvalPage extends StatefulWidget {
  const CipOvalPage({super.key});

  @override
  State<CipOvalPage> createState() => _CipOvalPageState();
}

class _CipOvalPageState extends State<CipOvalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ClipOval(
          clipper: CustomClip(),
          child: Image.asset('assets/IMG_0601.jpeg'),
        ),
      ),
    );
  }
}

class CustomClip extends CustomClipper<Rect> {
  @override
  getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width - 105, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

class OvalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.addOval(Rect.fromLTWH(00, 10, size.width - 30, size.height - 250));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
