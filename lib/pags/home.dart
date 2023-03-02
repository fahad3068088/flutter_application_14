import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
  @override
  Widget build(BuildContext context) {
    Map aa= ModalRoute.of(context)!.settings.arguments as Map;
    String assetImage=aa ["aaa"]?"sa.png":"night.png";
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/$assetImage"), fit: BoxFit.cover),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: ()async {
              dynamic result = await Navigator.pushNamed(context, '/as');

              },
              icon: Icon(
                Icons.edit_location,
                color: Color.fromARGB(255, 255, 129, 129),
                size: 24.0,
              ),
              label: Text(
                "Edit location",
                style: TextStyle(fontSize: 19),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(146, 90, 104, 223)),
                padding: MaterialStateProperty.all(EdgeInsets.all(22)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
              ),
            ),
            SizedBox(
              height: 300,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 10, 10),
              color: Color.fromARGB(113, 0, 0, 0),
              child: Column(
                children: [
                  Text(aa["ass"],
                      style: TextStyle(fontSize: 55, color: Colors.red)),
                  SizedBox(
                    height: 30,
                  ),
                  Text(aa["add"],
                      style: TextStyle(fontSize: 55, color: Colors.red))
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
