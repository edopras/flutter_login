import 'package:flutter/material.dart';

class Registerpage extends StatefulWidget {
  @override
  _RegisterpageState createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage>{
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(70.0),
          child: Text("Register Area Edo", style: TextStyle(color: Colors.black)),
        ),
        backgroundColor: Colors.red[200],
      ),
      backgroundColor: Colors.lightBlueAccent,
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
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Registrasi",
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 3,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Email Address",
                        contentPadding: EdgeInsets.all(4)),
                  ),
                  TextFormField(
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
                            "Daftar",
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
                                    title: Text("Success"),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Row(children: <Widget>[
                                          Text("Pendaftaran Anda Berhasil")
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
                                });
                          }),
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
