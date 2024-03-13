
import 'package:flutter/material.dart' show AssetImage, Axis, Border, BorderRadius, BorderSide, BoxDecoration, BoxFit, BuildContext, Color, Colors, Column, Container, DecorationImage, EdgeInsets, FontWeight, Image, MediaQuery, Padding, Radius, Scaffold, SingleChildScrollView, SizedBox, Stack, State, StatefulWidget, Text, TextAlign, TextStyle, Widget;

import '../utils/List.dart';

class Saar extends StatefulWidget {
  const Saar({super.key});

  @override
  State<Saar> createState() => _SaarState();
}

class _SaarState extends State<Saar> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFFDE3B2),
      body: Stack(
        children: [
          Container(
            height: height * 0.6,
            width: width,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/appBG.png'),
              fit: BoxFit.cover,
            )),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SizedBox(
              width: width,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, height * 0.085, 0, 0),
                    height: height * 0.21,
                    width: width * 0.52,
                    child: Image.asset(
                      'assets/images/Geeta_logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 100),
                    padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
                    width: width,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFEF2DA),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        ...List.generate(
                          data[1]['bhaags'].length,
                          (index) => buildContainer(index),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildContainer(int index) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(vertical: 6),
        // height: height * 0.5,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color(0xFFFDB316),
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border(bottom: BorderSide(width: 10))),
        child: Column(
          children: [
            Text(
              data[1]['bhaags'][index]['id'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: height / 55,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                data[1]['bhaags'][index]['name'],
                style: TextStyle(
                  fontSize: height / 40,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              data[1]['bhaags'][index]['meaning'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: height / 55,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ],
        ));
  }
}
