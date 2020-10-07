import 'package:flutter/material.dart';
import 'package:slic_dummy_flutter/screens/login.dart';

class UserPersionalDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: StepTwo());
  }
}

class StepTwo extends StatefulWidget {
  @override
  _StepTwoState createState() => _StepTwoState();
}

class _StepTwoState extends State<StepTwo> {
  var _p_ypes = [
    "Mr.",
    "Mrs.",
    "Miss.",
    "Master.",
    "Dr.",
    "Doc.",
    "Rev.",
    "Dr.(Miss).",
    "Maj.",
    "Prof.",
    "Ms.",
    "M/s.",
    "Dr.(Mrs).",
    "Maj.Gen."
  ];
  var selected = "Mr.";

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Step Two-Sign Up-User Personal Details',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
                height: 45,
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(color: Colors.teal)),
                margin: EdgeInsets.only(
                    top: 60.0, left: 20.0, bottom: 10.0, right: 20.0),
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
                  style: TextStyle(fontSize: 15.0, color: Colors.teal),
                  isExpanded: true,
                ))),
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
                    decoration: new InputDecoration(
                      hintText: 'First Name',
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                      border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(color: Colors.teal)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(width: 1, color: Colors.teal),
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
                      hintText: 'Last Name',
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.teal),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(width: 1, color: Colors.teal),
                      ),
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () => _selectDate(context),
                    child: Text("${selectedDate.toLocal()}".split(' ')[0]),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(color: Colors.teal)),
                  ),
                ],
              ),
            ),
            Container(
              height: 45,
              margin: EdgeInsets.only(
                  top: 60.0, left: 20.0, bottom: 10.0, right: 20.0),
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
                  "Finish",
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Loginpage()),
                  );
                },
                child: Text(
                  "Back",
                  style: TextStyle(fontSize: 15.0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(color: Colors.teal),
                ),
              ),
            ),
          ],
        )));
  }
}
