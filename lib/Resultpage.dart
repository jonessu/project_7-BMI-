import 'package:flutter/material.dart';
import 'route/route.dart' as route;

class resultpage extends StatefulWidget {
  static const routeName = '/result';
  @override
  _resultpageState createState() => _resultpageState();
}

class _resultpageState extends State<resultpage> {
  @override
  Widget build(BuildContext context) {
    final _resultobj = ModalRoute.of(context).settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Result"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "NORMAL",
                    style: TextStyle(color: Colors.green, fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Text(
                    "19.0",
                    style: TextStyle(color: Colors.white, fontSize: 60.0),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    "You have a normal body weight.",
                    style: TextStyle(color: Colors.white54, fontSize: 18.0),
                  ),
                  Text(
                    "Good Job!",
                    style: TextStyle(color: Colors.white54, fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print(_resultobj['v1']);
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                color: Color(0xFFEB1555),
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: double.infinity,
              height: 80.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Center(
                  child: Text(
                    "Re-Calculate",
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
