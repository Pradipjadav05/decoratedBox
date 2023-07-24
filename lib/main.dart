import 'package:decoratedbox/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "DecoratedBox Demo",
      home: SplashScreen(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DecoratedBox"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
                // borderRadius: const BorderRadius.all(Radius.circular(50)),
                shape: BoxShape.circle, //shape: rectangle & circle
                boxShadow: const [
                  BoxShadow(
                      color: Colors.blue,
                      blurStyle: BlurStyle.outer,
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                      offset: Offset.zero),
                  BoxShadow(
                      color: Colors.green,
                      blurStyle: BlurStyle.outer,
                      blurRadius: 12.0,
                      spreadRadius: 10.0,
                      offset: Offset.zero),
                  BoxShadow(
                      color: Colors.red,
                      blurStyle: BlurStyle.outer,
                      blurRadius: 15.0,
                      spreadRadius: 15.0,
                      offset: Offset.zero),
                ],
                //gradient: SweepGradient, LinearGradient, RadialGradient
                gradient: const SweepGradient(
                  startAngle: 3.14 * 0.2,
                  endAngle: 3.14 * 1.7,
                  colors: [
                    Colors.red,
                    Colors.yellow,
                    Colors.blue,
                    Colors.green,
                    Colors.red,
                  ],
                  // stops: <double>[0.9, 1.0],
                ),
              ),
              position: DecorationPosition.background,
              child: Container(
                height: 200,
                width: 200,
                // color: Colors.greenAccent,
                padding: const EdgeInsets.all(20),
                child: const Center(child: Text("DecoratedBox")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
