import 'package:flutter/material.dart';

import 'Registerpage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final myControllerEmail = TextEditingController();
  final myControllerPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(24),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start, // ada disebelah kiri
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          alignment: Alignment.center,
                          child: new Image.asset(
                            'assets/barata.png',
                            height: 60.0,
                            //width: 250.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 3,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Do You Have Any Account",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  TextFormField(
                    controller: myControllerEmail,
                    decoration: InputDecoration(
                        hintText: "Email Address",
                        contentPadding: EdgeInsets.all(4)),
                  ),
                  TextFormField(
                    controller: myControllerPass,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Your Password",
                        contentPadding: EdgeInsets.all(4)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                          color: Colors.blueAccent,
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    title: Text("Attention"),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Row(children: <Widget>[
                                          Text("Yours Email Is : "),
                                          Text(myControllerEmail.text,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold))
                                        ]),
                                        Row(children: <Widget>[
                                          Text("Yours Password Is : "),
                                          Text(myControllerPass.text,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold))
                                        ])
                                      ],
                                    ),
                                    actions: <Widget>[
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            RaisedButton(
                                              color: Colors.green,
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("Oke"),
                                            ),
                                            RaisedButton(
                                              color: Colors.red,
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("Cancel"),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                }
                            );
                        }
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: FlatButton(
                      child: Text("I don't Have an account? sign up"),
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Registerpage()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
