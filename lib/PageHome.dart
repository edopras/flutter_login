import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:giffy_dialog/giffy_dialog.dart';

import 'Login.dart';

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas 1"),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(32),
          width: MediaQuery.of(context).size.width,
          child: Column(children: <Widget>[
            RaisedButton(
              color: Colors.lightBlue,
              child: Text('Login'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>Login()));
              },
            )
          ]),
        ),
      ),
    );
  }
}
