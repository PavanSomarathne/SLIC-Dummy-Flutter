import 'package:flutter/material.dart';

class AddPolicy extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AddPolicyState();
  }
}

enum SingingCharacter { lafayette, jefferson }

class AddPolicyState extends State<AddPolicy> {
  var _p_ypes = ["Life", "Motor Comprehensive", "Non Motor"];
  SingingCharacter _character = SingingCharacter.lafayette;
  var selected = "Life";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Your Policy'),
      ),
      body: Container(
        width: 300.0,
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: 300,
                child: ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton<String>(
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
                  ),
                ),
              ),
              ListTile(
                title: const Text('Lafayette'),
                leading: Radio(
                  value: SingingCharacter.lafayette,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Thomas Jefferson'),
                leading: Radio(
                  value: SingingCharacter.jefferson,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              Container(
                  child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                ),
              )),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text('The Enchanted Nightingale'),
                      subtitle:
                          Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ButtonTheme(
                minWidth: 300.0,
                child: RaisedButton(
                  color: Colors.cyan[400],
                  onPressed: () {},
                  child: const Text('Enabled Button',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
