import 'package:flutter/material.dart';

class SizeAnimation extends StatefulWidget {
  const SizeAnimation({Key? key}) : super(key: key);

  @override
  State<SizeAnimation> createState() => _SizeAnimationState();
}

class _SizeAnimationState extends State<SizeAnimation> {
  double _size = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _size = _size == 300 ? 100 : 300;
            });
          },
          child: Container(
            color: Colors.white,
            child: AnimatedSize(
              curve: Curves.easeIn,
              child: FlutterLogo(
                size: _size,
              ),
              duration: Duration(seconds: 1),
            ),
          ),
        ),
      ),
    );
  }
}
