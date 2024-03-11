import 'dart:async';

import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 3),() {
      Navigator.of(context).pushNamed('/');
    },);


    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Center(
            child: InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/');
      },
      child: Container(
          height: height,
          width: width,
          color: Colors.red,
          child: Image.asset(
            'assets/images/splash_img.png',
            fit: BoxFit.fill,
          )),
    )));
  }
}
