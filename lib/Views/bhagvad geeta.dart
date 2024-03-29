import 'package:flutter/material.dart';

import '../utils/List.dart';
import 'SelectionScreen.dart';

class Bhagvad_geeta extends StatefulWidget {
  const Bhagvad_geeta({super.key});

  @override
  State<Bhagvad_geeta> createState() => _Bhagvad_geetaState();
}

class _Bhagvad_geetaState extends State<Bhagvad_geeta> {
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
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                    width: width * 0.85,
                    decoration: const BoxDecoration(
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

  selectContainer(int index) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        bhaagIndex = index;
        Navigator.pushNamed(context, '/final');
      },
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: height * 0.009, horizontal: width * 0.055),
        padding: EdgeInsets.symmetric(vertical: height * 0.008),
        height: height * 0.1,
        width: width,
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFFFDB316), Color(0xfffffc341)]),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Row(children: [
          Image.asset(
            'assets/images/icon${(index < 6) ? 1 + index : (index % 6) + 1}.png',
          ),
          const VerticalDivider(
            color: Colors.black26,
          ),
          Expanded(
              child: Center(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                data[0]['Bhaags'][index]['name'],
                style: TextStyle(
                  fontSize: height / 68,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
              Text(
                data[0]['Bhaags'][index]['name'],
                style: TextStyle(
                  fontSize: height / 40,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          ))),
        ]),
      ),
    );
  }
}
