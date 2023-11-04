import 'package:flutter/material.dart';
import 'package:macn/presentation/screens/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Macn',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: const HomeNotes(),
      debugShowCheckedModeBanner: false,
    );
  }
}
