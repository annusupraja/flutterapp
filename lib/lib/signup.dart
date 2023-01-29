import 'package:flutter/material.dart';

import 'home.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 60),
                child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.network(
                      "https://img.icons8.com/bubbles/512/likee-ap.png",
                      //color: Colors.orange
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Manam",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "stay healthy,stay happy",
              style: TextStyle(color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 65),
              child: TextField(
                decoration: InputDecoration(
                    // prefix: Icon(Icons.people),
                    hintText: "UserName",
                    labelText: "Enter UserName",
                    filled: true,
                    fillColor: Colors.pinkAccent,
                    hoverColor: Colors.redAccent,
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: TextField(
                decoration: InputDecoration(
                    // prefix: Icon(Icons.people),
                    hintText: "Create Password",
                    labelText: " Create Password",
                    filled: true,
                    fillColor: Colors.pinkAccent,
                    hoverColor: Colors.redAccent,
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.5,
              height: 47,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    primary: Colors.yellow.shade300,
                    onPrimary: Colors.blueAccent,
                  ),
                  onPressed: () {
                    // print("clicked");
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return home();
                    }));
                  },
                  child: Text(
                    "Sumbit",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.pinkAccent,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
