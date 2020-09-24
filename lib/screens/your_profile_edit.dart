import 'package:flutter/material.dart';

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

  var _p_ypes = ["Life", "Motor Comprehensive", "Non Motor"];
  var selected = "Life";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
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
                      labelText: 'Second Name',
                      hintText: 'Enter your second name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0))),
                ))
          ],
        ),
      ),
    );
  }

  Widget getImageAsset() {
    AssetImage assImg = AssetImage('images/35.png');
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
