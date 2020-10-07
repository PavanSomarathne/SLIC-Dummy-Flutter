import 'package:flutter/material.dart';
import 'package:slic_dummy_flutter/widgets/LifePolicy.dart';
import 'package:slic_dummy_flutter/widgets/MotorPolicy.dart';

class AddPolicy extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AddPolicyState();
  }
}

enum SingingCharacter { Policy, vehicle }

class AddPolicyState extends State<AddPolicy> {
  var _p_ypes = ["Life", "Motor Comprehensive", "Non Motor"];
  SingingCharacter _character = SingingCharacter.Policy;
  var selected = "Life";
  var _radioShow = false;
  var _textVehiShow = false;
  var _textPoliShow = true;

// void showTextBox() {
//       setState(() {
//         _isVisible = !_isVisible;
//       });
//     }
  void showType() {}

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Your Policy'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2,
                      color: Colors.black26,
                      offset: Offset(0, 3))
                ],
              ),
              height: 45,
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              margin: EdgeInsets.only(
                  top: 50.0, left: 20.0, bottom: 10.0, right: 20.0),
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
                  if (this.selected == "Motor Comprehensive") {
                    setState(() {
                      _radioShow = true;
                    });
                  } else {
                    _radioShow = false;
                  }
                },
                value: selected,
                hint: Text("honorifics"),
                isExpanded: true,
              ))),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: const Text('Policy No'),
                  leading: Radio(
                    value: SingingCharacter.Policy,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                      if (value == SingingCharacter.Policy) {
                        setState(() {
                          _textPoliShow = true;
                          _textVehiShow = false;
                        });
                      } else {
                        setState(() {
                          _textPoliShow = false;
                          _textVehiShow = true;
                        });
                      }
                    },
                  ),
                ),
                Visibility(
                  visible: _radioShow,
                  child: ListTile(
                    title: const Text('Vehicle No'),
                    leading: Radio(
                      value: SingingCharacter.vehicle,
                      groupValue: _character,
                      onChanged: (SingingCharacter value) {
                        setState(() {
                          _character = value;
                        });
                        if (value == SingingCharacter.Policy) {
                          setState(() {
                            _textPoliShow = true;
                            _textVehiShow = false;
                          });
                        } else {
                          setState(() {
                            _textPoliShow = false;
                            _textVehiShow = true;
                          });
                        }
                      },
                    ),
                  ),
                ),
                Visibility(
                  visible: _textPoliShow,
                  child: Container(
                      padding: EdgeInsets.only(
                        left: 5.0,
                        right: 5.0,
                        //bottom: 10.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1,
                              color: Colors.black12,
                              offset: Offset(0, 2))
                        ],
                      ),
                      height: 50,
                      margin: EdgeInsets.only(
                        top: 10.0,
                        bottom: 10.0,
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          //labelText: 'First Name',
                          hintText: 'eg-XXXX',
                        ),
                      )),
                ),
                Visibility(
                  visible: _textVehiShow,
                  child: Container(
                      padding: EdgeInsets.only(
                        left: 5.0,
                        right: 5.0,
                        //bottom: 10.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1,
                              color: Colors.black12,
                              offset: Offset(0, 2))
                        ],
                      ),
                      height: 50,
                      margin: EdgeInsets.only(
                        top: 10.0,
                        bottom: 10.0,
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          //labelText: 'First Name',
                          hintText: 'eg-CAV 1280',
                        ),
                      )),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text("Preview"),
                Visibility(visible: _radioShow, child: MotorPolicy()),
                Visibility(visible: !_radioShow, child: LifePolicy()),
              ],
            ),
          ),
          SizedBox(
            height: 1.0,
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            child: ButtonTheme(
              minWidth: 200.0,
              child: RaisedButton(
                color: Colors.cyan[400],
                onPressed: () {},
                child: const Text('Save',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
