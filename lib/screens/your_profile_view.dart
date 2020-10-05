import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'your_profile_edit.dart';

class YourProfileView extends StatefulWidget {
  @override
  _YourProfileViewState createState() => _YourProfileViewState();
}

class _YourProfileViewState extends State<YourProfileView> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => YourProfileEdit()),
          );
        },
        tooltip: 'Increment',
        child: Icon(
          MdiIcons.accountEdit,
          size: 35.0,
        ),
      ),
      appBar: AppBar(
        title: Text('Your Profile'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            getImageAsset(),
            Center(
              child: Container(
                  height: 45,
                  margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                  child: Text(
                    "Mahesh Bandara Somarathne",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
                    child: Icon(
                      Icons.mail_outline,
                      size: 35.0,
                    ),
                  ),
                  Text(
                    "maheshsoma@gmail.com",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
                    child: Icon(
                      Icons.perm_contact_calendar,
                      size: 35.0,
                    ),
                  ),
                  Text(
                    "700971384V",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0, bottom: 10.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Icon(
                      Icons.public,
                      size: 35.0,
                    ),
                  ),
                  Text(
                    "Sri Lanka",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Icon(
                      Icons.cake,
                      size: 35.0,
                    ),
                  ),
                  Text(
                    "1997/04/06",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Icon(
                      Icons.phone,
                      size: 35.0,
                    ),
                  ),
                  Text(
                    "0714387452",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Icon(
                      Icons.contact_mail,
                      size: 35.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "421/5 Paragahamulla,Hindagolla Kurunegala Sri Lanka",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getImageAsset() {
    AssetImage assImg = AssetImage('images/avt.png');
    Image img = Image(
      image: assImg,
      width: 150.0,
      height: 150.0,
    );
    return Container(
      margin: EdgeInsets.only(top: 15.0, bottom: 5.0),
      child: img,
    );
  }
}
