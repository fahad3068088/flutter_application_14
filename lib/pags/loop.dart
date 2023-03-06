// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../classes/getData.dart';



class Loop extends StatefulWidget {
  const Loop({super.key});

  @override
  State<Loop> createState() => _LoopState();
}

class _LoopState extends State<Loop> {

  getLodeng() async {
    allContre one=allContre();
    await one.getData();
    var pushReplacementNamed = Navigator.pushReplacementNamed(context, '/home',
        arguments: { "ass": one.timeNaw, "add": one.timeZone,"aaa":one.aaa });
  }




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     getLodeng();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitSpinningLines(
              color: Color.fromARGB(255, 165, 29, 29),
              size: 100.0,
            ),
            
          ],
        ),
      ),
    );
  }
}
  