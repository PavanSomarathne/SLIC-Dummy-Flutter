import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:slic_dummy_flutter/screens/your_profile_view.dart';
import 'package:getwidget/getwidget.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: 10.0, left: 20.0, bottom: 1.0, right: 20.0),
            child: Text(
              "Address:",
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 5.0, left: 20.0, bottom: 10.0, right: 20.0),
            child: Text(
              "Rakshana Mandiraya, No.21 Vauxhall Street, \nColombo 2, Sri Lanka",
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 10.0, left: 20.0, bottom: 1.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: (width / 4) * 1.7,
                  child: Text('Hotlines: ',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      )),
                ),
                Container(
                  width: (width / 4) * 1.8,
                  child: Text('Hotline Numbers:',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      )),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 5.0, left: 20.0, bottom: 10.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: (width / 4) * 1.7,
                  child: Text(
                      '+94 112357357 \n+94 114357357 \n+94 115357357 \n+94 117357357',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
                Container(
                  width: (width / 4) * 1.8,
                  child: Text(
                      '+94 112357000 \n+94 114357000 \n+94 115357000 \n+94 117357000',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 10.0, left: 20.0, bottom: 1.0, right: 20.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    "Fax Number:",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 5.0, left: 20.0, bottom: 10.0, right: 20.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    "+94 11 2447742",
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 10.0, left: 20.0, bottom: 1.0, right: 20.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    "Email:",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 5.0, left: 20.0, bottom: 10.0, right: 20.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    "contactus@srilankainsurance.net",
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 10.0, left: 20.0, bottom: 1.0, right: 20.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    "Sri Lanka Insurance:",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: 1.0, left: 20.0, bottom: 1.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                getImageAsset1(),
                getImageAsset2(),
                getImageAsset3(),
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: 1.0, left: 20.0, bottom: 1.0, right: 20.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    "Motor Plus:",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: 1.0, left: 20.0, bottom: 1.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                getImageAsset1(),
                getImageAsset2(),
                getImageAsset3(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getImageAsset1() {
    AssetImage assImg = AssetImage('images/face.png');
    Image img = Image(
      image: assImg,
      width: 40.0,
      height: 40.0,
    );
    return Container(
      margin: EdgeInsets.only(top: 1.0, bottom: 5.0),
      child: img,
    );
  }

  Widget getImageAsset3() {
    AssetImage assImg = AssetImage('images/twit.png');
    Image img = Image(
      image: assImg,
      width: 60.0,
      height: 60.0,
    );
    return Container(
      margin: EdgeInsets.only(top: 1.0, bottom: 5.0),
      child: img,
    );
  }

  Widget getImageAsset2() {
    AssetImage assImg = AssetImage('images/you.png');
    Image img = Image(
      image: assImg,
      width: 120.0,
      height: 120.0,
    );
    return Container(
      margin: EdgeInsets.only(top: 1.0, bottom: 5.0),
      child: img,
    );
  }
}
