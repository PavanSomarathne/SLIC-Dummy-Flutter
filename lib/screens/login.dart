import 'package:flutter/material.dart';
import './userLoginDetails.dart';
import 'package:flutter/gestures.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _mykey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _mykey,
      child: ListView(
        children: <Widget>[
          getImageAsset(),
          Container(
            height: 45,
            margin: EdgeInsets.only(
                top: 60.0, left: 20.0, bottom: 10.0, right: 20.0),
            child: new Theme(
                data: new ThemeData(
                  primaryColor: Colors.teal,
                  primaryColorDark: Colors.teal,
                ),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter user name';
                    } else if (value == 'admin') {
                      return 'User name is correct';
                    } else {
                      return 'Invalid user name';
                    }
                  },
                  style: TextStyle(color: Colors.teal),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.teal,
                    ),
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
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter password';
                    } else if (value == 'admin') {
                      return 'Password is correct';
                    } else {
                      return 'Invalid Password';
                    }
                  },
                  obscureText: true,
                  style: TextStyle(color: Colors.teal),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.vpn_key,
                      color: Colors.teal,
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(fontSize: 15.0, color: Theme.of(context).primaryColor),
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
            child: new RichText(
              text: new TextSpan(
                children: [
                  new TextSpan(
                    text: 'Forgot Password?',
                    style: new TextStyle(color: Colors.blue),
//                        recognizer: new TapGestureRecognizer()
//                          ..onTap = () { launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html');
//                          },
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 45,
            margin: EdgeInsets.only(
                top: 1.0, left: 20.0, bottom: 10.0, right: 20.0),
            child: RaisedButton(
              color: Colors.teal,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              onPressed: () {
                if (_mykey.currentState.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserLoginDetails()),
                  );
                } else {
                  print("Btn pushed  sssssss");
                }
              },
              child: Text(
                "Login",
                style: TextStyle(fontSize: 15.0),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(color: Theme.of(context).primaryColor)),
            ),
          ),
          Container(
            height: 45,
            margin: EdgeInsets.only(
                top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
            child: Row(
              children: [
                Text(
                  "Don't have an account?   ",
                  style: const TextStyle(color: Colors.black),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UserLoginDetails()),
                    );
                  },
                  child: Text(
                    "SignUp ",
                    style: const TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }

  Widget getImageAsset() {
    AssetImage assImg = AssetImage('images/slicn.jpg');
    Image img = Image(
      image: assImg,
      width: 80.0,
      height: 80.0,
    );
    return Container(
      margin: EdgeInsets.only(top: 100.0, bottom: 5.0),
      child: img,
    );
  }
}
