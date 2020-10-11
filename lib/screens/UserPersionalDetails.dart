import 'package:flutter/material.dart';
import 'package:slic_dummy_flutter/screens/login.dart';
import 'package:slic_dummy_flutter/screens/userLoginDetails.dart';

class UserPersionalDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      home: StepTwo(),
      theme: new ThemeData(
          brightness: Brightness.light,
          primaryColor: Theme.of(context).primaryColor,
          primaryColorDark: Theme.of(context).primaryColor),
    );
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

  int _radioValue = 0;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final selectController = TextEditingController();
    final firstnameController = TextEditingController();
    final lastnameController = TextEditingController();

    final select = Container(
        height: 45,
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            border: Border.all(color: Theme.of(context).primaryColor)),
        margin:
            EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
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
          style:
              TextStyle(fontSize: 15.0, color: Theme.of(context).primaryColor),
          isExpanded: true,
        )));

    final firstname = Container(
      height: 45,
      margin: EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
      child: new Theme(
          data: new ThemeData(
            primaryColor: Theme.of(context).primaryColor,
            primaryColorDark: Theme.of(context).primaryColor,
          ),
          child: TextField(
            controller: firstnameController,
            style: TextStyle(color: Theme.of(context).primaryColor),
            decoration: new InputDecoration(
              hintText: 'First Name',
              hintStyle: TextStyle(
                  fontSize: 15.0, color: Theme.of(context).primaryColor),
              border: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide:
                      BorderSide(color: Theme.of(context).primaryColor)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide:
                    BorderSide(width: 1, color: Theme.of(context).primaryColor),
              ),
            ),
          )),
    );

    final lastname = Container(
      height: 45,
      margin: EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
      child: new Theme(
          data: new ThemeData(
            primaryColor: Theme.of(context).primaryColor,
            primaryColorDark: Theme.of(context).primaryColor,
          ),
          child: TextField(
            controller: lastnameController,
            style: TextStyle(color: Theme.of(context).primaryColor),
            decoration: InputDecoration(
              hintText: 'Last Name',
              hintStyle: TextStyle(
                fontSize: 15.0,
                color: Theme.of(context).primaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  width: 1,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          )),
    );

    final date = Container(
      width: width,
      margin: EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            width: width,
            child: RaisedButton(
              color: Colors.white,
              onPressed: () => _selectDate(context),
              child: Text("${selectedDate.toLocal()}".split(' ')[0]),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(color: Theme.of(context).primaryColor)),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Step Two-Sign Up-User Personal Details',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              width: width,
              height: 45,
              margin: EdgeInsets.only(
                  top: 50.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: (width / 4) * 1.0,
                    child: Text('Gender :',
                        softWrap: true,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Theme.of(context).primaryColor,
                        )),
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Radio(
                        value: 0,
                        groupValue: _radioValue,
                        onChanged: _handleRadioValueChange,
                      ),
                      new Text(
                        'Male',
                        style: new TextStyle(
                          fontSize: 15.0,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      new Radio(
                        value: 1,
                        groupValue: _radioValue,
                        onChanged: _handleRadioValueChange,
                      ),
                      new Text(
                        'Female',
                        style: new TextStyle(
                          fontSize: 15.0,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            select,
            SizedBox(
              height: 15.0,
            ),
            firstname,
            SizedBox(
              height: 15.0,
            ),
            lastname,
            SizedBox(
              height: 15.0,
            ),
            date,
            Container(
              height: 45,
              margin: EdgeInsets.only(
                  top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: FlatButton(
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: () {
                  if (firstnameController != null &&
                      firstnameController.text == "abc" &&
                      lastnameController != null) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                    firstnameController.clear();
                    lastnameController.clear();
                  } else {
                    // Widget okButton = FlatButton(
                    //   child: Text("OK"),
                    //   onPressed: () {
                    //     Navigator.push(context,
                    //         MaterialPageRoute(builder: (context) => Login()));
                    //   },
                    // );

                    AlertDialog alert = AlertDialog(
                      title: Text("Error !"),
                      titleTextStyle: TextStyle(
                          color: Colors.red[900], fontWeight: FontWeight.bold),
                      content: Text(
                        "Please Enter Correct Username and Password",
                      ),
                      contentTextStyle: TextStyle(
                        color: Colors.red,
                      ),
                      // actions: [
                      //   okButton,
                      // ],
                    );

                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alert;
                      },
                    );
                  }
                },
                child: Text(
                  "Finish",
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
              child: FlatButton(
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StepOne()),
                  );
                },
                child: Text(
                  "Back",
                  style: TextStyle(fontSize: 15.0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(color: Theme.of(context).primaryColor),
                ),
              ),
            ),
          ],
        ));
  }
}
