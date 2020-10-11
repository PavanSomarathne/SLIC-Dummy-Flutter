import 'package:flutter/material.dart';

class Mcash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Manage mCash Payment',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            getImageAsset(),
            Container(
              height: 45,
              margin: EdgeInsets.only(
                  top: 20.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: new Theme(
                  data: new ThemeData(
                    primaryColor: Theme.of(context).primaryColor,
                    primaryColorDark: Theme.of(context).primaryColor,
                  ),
                  child: TextField(
                    style: TextStyle(color: Theme.of(context).primaryColor),
                    decoration: InputDecoration(
                      hintText: 'Total',
                      hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Theme.of(context).primaryColor),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                            width: 1, color: Theme.of(context).primaryColor),
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
                    primaryColor: Theme.of(context).primaryColor,
                    primaryColorDark: Theme.of(context).primaryColor,
                  ),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                    decoration: InputDecoration(
                      hintText: 'Select mCash Mobile No',
                      hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Theme.of(context).primaryColor),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                            width: 1, color: Theme.of(context).primaryColor),
                      ),
                    ),
                  )),
            ),
            Container(
              height: 45,
              margin: EdgeInsets.only(
                  top: 30.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: FlatButton(
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: () {
                  /*...*/
                },
                child: Text(
                  "Pay Premium",
                  style: TextStyle(fontSize: 15.0),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(color: Theme.of(context).primaryColor)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getImageAsset() {
    AssetImage assImg = AssetImage('images/cash.jpg');
    Image img = Image(
      image: assImg,
      width: 100.0,
      height: 100.0,
    );
    return Container(
      margin: EdgeInsets.only(top: 90.0, bottom: 5.0),
      child: img,
    );
  }
}
