import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/List.dart';

class Aarti extends StatefulWidget {
  const Aarti({super.key});

  @override
  State<Aarti> createState() => _AartiState();
}

class _AartiState extends State<Aarti> {
  @override
  Widget build(BuildContext context) {

    int index = 3;

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFFDE3B2),
      body: Stack(
        children: [
          Container(
            height: height*0.6,
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
            height: height*1.5,
              width: width,
              // color: Colors.blue,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.s,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0,height*0.085,0,0),
                    height: height * 0.21,
                    width: width * 0.52,
                    // color: Colors.red,
                    child: Image.asset(
                      'assets/images/Geeta_logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: height * 0.6,
                    width: width,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEF2DA),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(20),
                      height: height * 0.5,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                        color: Color(0xFFFDB316),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border(bottom:BorderSide(width: 10))
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              data[3]['index'],
                              style: TextStyle(
                                fontSize: height / 40,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),


                      Text(
                        data[3]['aarti'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: height / 55,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),



                        ],
                      )


















                      // ListTile(
                      //   title: Text(
                      //     data[3]['index'],
                      //     style: TextStyle(
                      //       fontSize: height / 40,
                      //       fontWeight: FontWeight.w300,
                      //       color: Colors.black,
                      //     ),
                      //     maxLines: 1,  // Set max lines for the title
                      //     overflow: TextOverflow.ellipsis,  // Set overflow property
                      //   ),
                      //   subtitle: Text(
                      //     data[3]['aarti'],
                      //     textAlign: TextAlign.center,
                      //     style: TextStyle(
                      //       fontSize: height / 50,
                      //       fontWeight: FontWeight.w400,
                      //       color: Colors.black,
                      //     ),
                      //      // Set max lines for the subtitle
                      //     overflow: TextOverflow.ellipsis,  // Set overflow property
                      //   ),
                      // ),
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
}
