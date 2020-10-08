import 'package:flutter/material.dart';

class UserLoginDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Step One-Sign Up-Login User Details',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 45,
              margin: EdgeInsets.only(
                  top: 60.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: new Theme(
                  data: new ThemeData(
                    primaryColor: Colors.teal,
                    primaryColorDark: Colors.teal,
                  ),
                  child: TextField(
                    style: TextStyle(color: Colors.teal),
                    decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                      border: OutlineInputBorder(
//                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  )),
            ),
            Container(
              height: 45,
              margin: EdgeInsets.only(
                  top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: new Theme(
                  data: new ThemeData(
                    primaryColor: Colors.teal,
                    primaryColorDark: Colors.teal,
                  ),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.teal),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  )),
            ),
            Container(
              height: 45,
              margin: EdgeInsets.only(
                  top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: new Theme(
                  data: new ThemeData(
                    primaryColor: Colors.teal,
                    primaryColorDark: Colors.teal,
                  ),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.teal),
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  )),
            ),
            Container(
              height: 45,
              margin: EdgeInsets.only(
                  top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: new Theme(
                  data: new ThemeData(
                    primaryColor: Colors.teal,
                    primaryColorDark: Colors.teal,
                  ),
                  child: TextField(
                    style: TextStyle(color: Colors.teal),
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                      border: OutlineInputBorder(
//                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  )),
            ),
            Container(
              height: 45,
              margin: EdgeInsets.only(
                  top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: new RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                      text: "Are you a Sri Lankan?   ",
                      style: new TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 45,
              margin: EdgeInsets.only(
                  top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: new Theme(
                  data: new ThemeData(
                    primaryColor: Colors.teal,
                    primaryColorDark: Colors.teal,
                  ),
                  child: TextField(
                    style: TextStyle(color: Colors.teal),
                    decoration: InputDecoration(
                      hintText: 'NIC No',
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                      border: OutlineInputBorder(
//                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  )),
            ),
            Container(
              height: 45,
              margin: EdgeInsets.only(
                  top: 1.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: FlatButton(
                color: Colors.teal,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: () {
                  /*...*/
                },
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 15.0),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(color: Colors.teal)),
              ),
            ),
            Container(
              height: 45,
              margin: EdgeInsets.only(
                  top: 1.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: FlatButton(
                color: Colors.teal,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Back",
                  style: TextStyle(fontSize: 15.0),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(color: Colors.teal)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
