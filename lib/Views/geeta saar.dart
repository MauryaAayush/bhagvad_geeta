import 'package:flutter/material.dart';

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
                    // height: height * 0.6,
                    width: width,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEF2DA),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Column(
                      children: [

                        ...List.generate(data[1]['bhaags'].length, (index) =>  buildContainer(index),)




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
    double width = MediaQuery.of(context).size.width;


    return Container(
                        padding: EdgeInsets.all(20),
                          margin: EdgeInsets.all(20),
                          // height: height * 0.5,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xFFFDB316),
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              border: Border(bottom:BorderSide(width: 10))
                          ),
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
                          )


                      );
  }



}
