import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        // backgroundColor: Colors.black,
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: height * 0.8,
              width: width * 2,
              decoration:
                  const BoxDecoration(color: Colors.yellow, shape: BoxShape.circle),
            ),
            Container(
              height: height * 0.3,
              width: width,
              decoration: const BoxDecoration(
                color: Colors.amber,
              ),
            ),
            Container(
              height: height * 0.2,
              width: width,
              decoration: const BoxDecoration(
                color: Colors.orange,
              ),
            ),
          ],
        )
      ],
    ));
  }
}
