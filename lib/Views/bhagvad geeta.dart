import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/List.dart';

class Bhagvad_geeta extends StatefulWidget {
  const Bhagvad_geeta({super.key});

  @override
  State<Bhagvad_geeta> createState() => _Bhagvad_geetaState();
}

class _Bhagvad_geetaState extends State<Bhagvad_geeta> {
  @override
  Widget build(BuildContext context) {
    int index = 0;

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFFDE3B2),
      body: Stack(
        children: [
          Container(
            height: height * 0.6,
            width: width,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/appBG.png'),
              fit: BoxFit.cover,
            )
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: width,
              // color: Colors.blue,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.s,
                children: [
                  Container(
                    margin:
                        EdgeInsets.fromLTRB(0, height * 0.07, 0, height * 0.02),
                    height: height * 0.25,
                    width: width * 0.53,
                    // color: Colors.red,
                    child: Image.asset(
                      'assets/images/Geeta_logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: width * 0.85,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEF2DA),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(data[0]['Bhaags'].length,
                            (index) => selectContainer(index))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container selectContainer(int index) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(
          vertical: height * 0.009, horizontal: width * 0.055),
      padding: EdgeInsets.symmetric(vertical: height * 0.008),
      height: height * 0.11,
      width: width,
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xFFFDB316), Color(0xFFFFFC341)]),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Row(
        children: [
          Image.asset(
            'assets/images/icon1.png',
          ),
          VerticalDivider(
            color: Colors.black26,
          ),
          Expanded(
            child: Center(
              child: Text(
                data[0]['Bhaags'][index]['name'],
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
