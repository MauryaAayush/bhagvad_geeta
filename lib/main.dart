import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Views/SelectionScreen.dart';
import 'Views/mainscreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color(0xFFFDB211)));
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
     initialRoute: '/',
      routes: {
        '/' : (context) => const MainScreen(),
        '/second' : (context) => const SelectedScreen(),
      },
    );
  }
}
