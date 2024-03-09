import 'package:flutter/material.dart';

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

          Container(
            width: width,
            // color: Colors.blue,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.s,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: height*0.04),
                  height: height * 0.3,
                  width: width * 0.5,
                  // color: Colors.red,
                  child: Image.asset(
                    'assets/images/Geeta_logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
                // Container(
                //
                //   height: height,
                //   width: width*0.5,
                //   color: Colors.red,
                //
                // ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
