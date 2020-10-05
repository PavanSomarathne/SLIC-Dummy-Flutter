import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:slic_dummy_flutter/screens/your_profile_view.dart';

class YourProfileEdit extends StatefulWidget {
  @override
  _YourProfileEditState createState() => _YourProfileEditState();
}

class _YourProfileEditState extends State<YourProfileEdit> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  var _p_ypes = ["Mr.", "Mrs", "Miss", "Master", "Rev"];
  var selected = "Mr.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => YourProfileView()),
          );
        },
        tooltip: 'Increment',
        child: Icon(
          Icons.done,
          size: 40.0,
        ),
      ),
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            getImageAsset(),
            Container(
                height: 45,
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(color: Colors.black38)),
                margin: EdgeInsets.only(
                    top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
                child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                  focusColor: Colors.cyan,
                  items: _p_ypes.map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (String selected) {
                    setState(() {
                      this.selected = selected;
                    });
                  },
                  value: selected,
                  hint: Text("honorifics"),
                  isExpanded: true,
                ))),
            Container(
                height: 45,
                margin: EdgeInsets.only(
                    top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'First Name',
                      hintText: 'Enter your First name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0))),
                )),
            Container(
                height: 45,
                margin: EdgeInsets.only(
                    top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Second Name',
                      hintText: 'Enter your second name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0))),
                )),
            Container(
                height: 45,
                margin: EdgeInsets.only(
                    top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Last Name',
                      hintText: 'Enter your Last name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0))),
                ))
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
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(top: 15.0, bottom: 5.0),
      child: Stack(
        children: <Widget>[
          SizedBox(
            child: img,
          ),
          Positioned(
            bottom: -10,
            right: -50,
            child: RawMaterialButton(
              onPressed: () {},
              elevation: 2.0,
              fillColor: Colors.white,
              child: Icon(
                Icons.edit,
                size: 25.0,
              ),
              padding: EdgeInsets.all(10.0),
              shape: CircleBorder(),
            ),
          ),
        ],
        overflow: Overflow.visible,
      ),
    );
  }
}
