import 'package:flutter/material.dart';
import 'package:flutter_application_14/pags/as.dart';
import 'package:flutter_application_14/pags/home.dart';
import 'package:flutter_application_14/pags/loop.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const Loop(),
        '/home': (context) => const Home(),
        '/as': (context) => const As(),
      },
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
