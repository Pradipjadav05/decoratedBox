import 'package:flutter/material.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer(
    //     const Duration(seconds: 5),
    //     () => Navigator.pushReplacement(
    //         context, MaterialPageRoute(builder: (context) => const Home())));
    _controller = AnimationController(
      vsync: this, // used for re-sync, it's necessary.
      duration: const Duration(seconds: 3),
    )..repeat();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  //decoration tween
  final DecorationTween _decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      border: Border.all(style: BorderStyle.none),
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(60.0),
      boxShadow: const [
        BoxShadow(
          color: Color(0x66666666),
          blurRadius: 10.0,
          spreadRadius: 3.0,
          offset: Offset(0, 6.0),
        )
      ],
    ),
    end: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      border: Border.all(
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.zero,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: Colors.white,
        child: Center(
          child: DecoratedBoxTransition(
            position: DecorationPosition.background,
            decoration: _decorationTween.animate(_controller),
            child: Container(
              width: 200,
              height: 200,
              // color: Colors.red,
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                "images/miraclelogo.png",
                height: 200,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
