import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Views/SelectionScreen.dart';
import 'Views/bhagvad geeta.dart';
import 'Views/geeta aarti.dart';
import 'Views/geeta mahatmy.dart';
import 'Views/geeta saar.dart';
import 'Views/mainscreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Color(0xFFFDB211)));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'श्रीमद भगवत गीता',
      theme: ThemeData(
        useMaterial3: true,
      ),
     initialRoute: '/final',
      routes: {
        '/' : (context) => const MainScreen(),
        '/first' : (context) => const Bhagvad_geeta(),
        '/second' : (context) => const Saar(),
        '/third' : (context) => const Mahatmai(),
        '/fourth' : (context) => const Aarti(),
        '/final' : (context) => const FinalScreen(),

      },
    );
  }
}
