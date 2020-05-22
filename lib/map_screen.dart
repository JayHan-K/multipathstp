import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget{
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{

  Future<bool> _onBackPressed(){
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("프로그램을 종료하시겠습니까?"),
        actions: <Widget>[
          FlatButton(
            child: Text("Yes"),
            onPressed: () => Navigator.pop(context, true),
          ),
          FlatButton(
            child: Text("No"),
            onPressed: () => Navigator.pop(context, false),
          ),
        ],
      )
    )??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(child: Scaffold(
      body: Center(
        child: Text("Hello"),
      ),
    ), onWillPop: _onBackPressed);
  }
}