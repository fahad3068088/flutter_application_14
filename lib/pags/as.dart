import 'dart:ui';

import 'package:flutter/material.dart';

class As extends StatefulWidget {
  const As({super.key});

  @override
  State<As> createState() => _AsState();
}

class _AsState extends State<As> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(132, 83, 66, 66),
        title: Text("اختار الدولة", style: TextStyle(fontSize: 44)),
      ),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                tileColor:Color.fromARGB(255, 91, 123, 115),
                onTap: () {},
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/sa.png"),
                ),
                title: Text(
                  "السعودية",
                  style: TextStyle(fontSize: 44),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
