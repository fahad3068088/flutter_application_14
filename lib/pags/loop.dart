// ignore_for_file: prefer_const_constructors
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
class Loop extends StatefulWidget {
  const Loop({super.key});

  @override
  State<Loop> createState() => _LoopState();
}
class _LoopState extends State<Loop> {
   getData()async{
    Response response = await get(Uri.parse("http://worldtimeapi.org/api/timezone/Asia/Riyadh"));
    Map receivedData = jsonDecode(response.body);
    String datetime=receivedData["utc_datetime"];
    DateTime ad=DateTime.parse(datetime);
    String offset=receivedData["utc_offset"].substring(0,3);
    int af=int.parse(offset);
    DateTime realTime=ad.add(Duration(hours: af));
    String timeNaw =DateFormat('hh:mm a').format(realTime);
    String timeZone=receivedData["timezone"];
   Navigator.pushReplacementNamed(context, '/home', arguments: "السلام عليكم" );
   }
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SpinKitSpinningLines(
            //   color: Color.fromARGB(255, 165, 29, 29),
            //   size: 100.0,
            // ),
            ElevatedButton(
              onPressed: () {getData();},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              ),
              child: Text(
                " الذهاب الى الصفحه الرئيسية",
                style: TextStyle(fontSize: 19),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
