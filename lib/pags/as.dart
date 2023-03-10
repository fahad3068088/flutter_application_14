import 'dart:ui';

import 'package:flutter/material.dart';

import '../classes/getData.dart';

class As extends StatefulWidget {
  const As({super.key});

  @override
  State<As> createState() => _AsState();
}

class _AsState extends State<As> {
  List<AllContre> allContre = [
    AllContre(
        link: 'Africa/Cairo', cantreName: 'Egypt - Cairo', flag: 'egypt.png'),
    AllContre(
        link: 'Africa/Tunis',
        cantreName: 'Tunisia - Tunis',
        flag: 'tunisia.png'),
    AllContre(
        link: 'Africa/Algiers',
        cantreName: 'Algeria - Algiers',
        flag: 'algeria.png'),
    AllContre(
        link: 'Australia/Sydney',
        cantreName: 'Australia - Sydney',
        flag: 'australia.png'),
    AllContre(
        link: 'America/Toronto',
        cantreName: 'Canada - Toronto',
        flag: 'canada.png'),
    AllContre(
        link: 'Asia/Riyadh',
        cantreName: '	Saudi Arabia - Riyadh',
        flag: 'sa.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(132, 83, 66, 66),
        title: Text("اختار الدولة", style: TextStyle(fontSize: 44)),
      ),
      body: SizedBox(
          child: ListView.builder(
              itemCount: allContre.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      tileColor: Color.fromARGB(255, 91, 123, 115),
                      onTap: () async {
                        AllContre clikcantre = allContre[index];

                        await clikcantre.getData();

                        Navigator.pop(context,
                            {"time": clikcantre.timeNaw, "locechn": clikcantre.timeZone, "agg": clikcantre.aaa});
                      },
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/${allContre[index].flag}"),
                      ),
                      title: Text(
                        allContre[index].cantreName,
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                );
              })),
    );
  }
}
