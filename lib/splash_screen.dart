import 'package:flutter/material.dart';
import 'dart:async';

import 'package:multipathstp/map_screen.dart';

class SplashScreen extends StatefulWidget{
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _DelayAndCheckVersion().then(
        (status){
            _navigateToHome();
        }
    );

  }

  Future<bool> _DelayAndCheckVersion() async{
    await Future.delayed(Duration(milliseconds: 2000),() {});

    return true;
  }

  void _navigateToHome(){
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => MyHomePage()
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/Default.png'), fit: BoxFit.cover),
      ),
    );
  }
}

