import 'package:flutter/material.dart';

import '../utils/List.dart';

class FinalScreen extends StatefulWidget {
  const FinalScreen({super.key});

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

int bhaagIndex = 0;

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
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
            )),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              // height: height*1.5,
              width: width,
              // color: Colors.blue,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.s,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, height * 0.085, 0, 0),
                    height: height * 0.21,
                    width: width * 0.52,
                    // color: Colors.red,
                    child: Image.asset(
                      'assets/images/Geeta_logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // height: height * 0.6,
                    // width: width,
                    padding: EdgeInsets.fromLTRB(0, 25, 0, 10),
                    decoration: BoxDecoration(
                      color: Color(0xFFFEF2DA),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        ...List.generate(
                            data[0]['Bhaags'][bhaagIndex]['shloks'].length,
                            (index) => buildContainer(index))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildContainer(int index) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
        padding: EdgeInsets.symmetric(vertical: 0),
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        decoration: BoxDecoration(
          color: Color(0xFFFDB316),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                data[0]['Bhaags'][bhaagIndex]['id'],
                style: TextStyle(
                  fontSize: height / 65,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF2E2E2E),
                ),
              ),
            ),
            Text(
              data[0]['Bhaags'][bhaagIndex]['name'],
              style: TextStyle(
                fontSize: height / 45,
                fontWeight: FontWeight.w400,
                color: Color(0xFF2E2E2E),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                data[0]['Bhaags'][bhaagIndex]['shloks'][index]['shlok'],
                style: TextStyle(
                  fontSize: height / 45,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF2E2E2E),
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Container(
              height: height * 0.001,
              width: width * 0.9,
              color: Colors.black45,
            ),

            // VerticalDivider(
            //   thickness: 10,
            //   color: Colors.red,
            // ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                data[0]['Bhaags'][bhaagIndex]['shloks'][index]['meaning'],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: height / 45,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF2E2E2E),
                ),
              ),
            ),

            Container(
              height: height * 0.05,
              width: width,
              decoration: BoxDecoration(
                  color: Color(0xFF2F2D32),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Copy',
                    style: TextStyle(
                        color: Color(0xFFFDB316),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Share',
                    style: TextStyle(
                        color: Color(0xFFFDB316),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
