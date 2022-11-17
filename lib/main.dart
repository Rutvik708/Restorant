import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zomato/tsk.dart';


void main()
{
  runApp(MaterialApp(
    home: splash(),
  ));
}

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override



  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
          child: Container(
            child: Image.asset("pics/spl.jpg"),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    abc()
    {
      Timer(Duration(seconds: 3), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return tsk();
        },));
      });
    }
    abc();
  }
}
