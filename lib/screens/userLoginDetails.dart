import 'package:flutter/material.dart';
import 'package:slic_dummy_flutter/screens/UserPersionalDetails.dart';
import 'package:slic_dummy_flutter/screens/login.dart';

class StepOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      home: UserLoginDetails(),
      theme: new ThemeData(
          brightness: Brightness.light,
          primaryColor: Theme.of(context).primaryColor,
          primaryColorDark: Theme.of(context).primaryColor),
    );
  }
}

class UserLoginDetails extends StatefulWidget {
  @override
  _UserLoginDetailsState createState() => _UserLoginDetailsState();
}

class _UserLoginDetailsState extends State<UserLoginDetails> {
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
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmController = TextEditingController();
    final emailController = TextEditingController();
    final nicController = TextEditingController();

    final txtUserName = Container(
        height: 45.0,
        child: TextField(
            controller: usernameController,
            style: TextStyle(color: Theme.of(context).primaryColor),
            decoration: InputDecoration(
              hintText: 'Username',
              hintStyle: TextStyle(
                  fontSize: 15.0, color: Theme.of(context).primaryColor),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  width: 1,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            )));

    final password = Container(
        height: 45,
        child: TextField(
          controller: passwordController,
          obscureText: true,
          style: TextStyle(color: Theme.of(context).primaryColor),
          decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: TextStyle(
                fontSize: 15.0, color: Theme.of(context).primaryColor),
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
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
        ));

    final confirm = Container(
        height: 45,
        child: TextField(
          controller: confirmController,
          obscureText: true,
          style: TextStyle(color: Theme.of(context).primaryColor),
          decoration: InputDecoration(
            hintText: 'Confirm Password',
            hintStyle: TextStyle(
                fontSize: 15.0, color: Theme.of(context).primaryColor),
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
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
        ));

    final email = Container(
        height: 45.0,
        child: TextField(
            controller: emailController,
            style: TextStyle(color: Theme.of(context).primaryColor),
            decoration: InputDecoration(
              hintText: 'Email',
              hintStyle: TextStyle(
                  fontSize: 15.0, color: Theme.of(context).primaryColor),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  width: 1,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            )));

    final nic = Container(
        height: 45.0,
        child: TextField(
            controller: nicController,
            style: TextStyle(color: Theme.of(context).primaryColor),
            decoration: InputDecoration(
              hintText: 'NIC No',
              hintStyle: TextStyle(
                  fontSize: 15.0, color: Theme.of(context).primaryColor),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  width: 1,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            )));

    final nextbutton = Container(
      height: 45,
      child: FlatButton(
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.blueAccent,
        onPressed: () {
          if (usernameController.text.trim() != '' &&
              passwordController.text.trim() != '' &&
              confirmController.text.trim() != '' &&
              emailController.text.trim() != '' &&
              nicController.text.trim() != '') {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => UserPersionalDetails()));
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
                "Please Fill All Details",
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
          "Next",
          style: TextStyle(fontSize: 15.0),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: BorderSide(
              color: Theme.of(context).primaryColor,
            )),
      ),
    );

    final backbutton = Container(
      height: 45,
      child: FlatButton(
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.blueAccent,
        onPressed: () {
          // Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Login()),
          );
        },
        child: Text(
          "Back",
          style: TextStyle(fontSize: 15.0),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: BorderSide(
              color: Theme.of(context).primaryColor,
            )),
      ),
    );

    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Step One-Sign Up-Login User Details',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 25, right: 25),
          children: <Widget>[
            txtUserName,
            SizedBox(
              height: 20.0,
            ),
            password,
            SizedBox(
              height: 20.0,
            ),
            confirm,
            SizedBox(
              height: 20.0,
            ),
            email,
            Container(
              height: 45,
              margin: EdgeInsets.only(
                  top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: (width / 4) * 1.7,
                    child: Text('Are you a Sri Lankan?',
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
                        'Yes',
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
                        'No',
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
            nic,
            SizedBox(
              height: 20.0,
            ),
            nextbutton,
            SizedBox(
              height: 20.0,
            ),
            backbutton,
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class StepOne extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Flutter App",
//       home: UserLoginDetails(),
//       theme: new ThemeData(
//           brightness: Brightness.light,
//           primaryColor: Theme.of(context).primaryColor,
//           primaryColorDark: Theme.of(context).primaryColor),
//     );
//   }
// }

// class UserLoginDetails extends StatefulWidget {
//   @override
//   _UserLoginDetailsState createState() => _UserLoginDetailsState();
// }

// class _UserLoginDetailsState extends State<UserLoginDetails> {
//   int _radioValue = 0;

//   void _handleRadioValueChange(int value) {
//     setState(() {
//       _radioValue = value;

//       switch (_radioValue) {
//         case 0:
//           break;
//         case 1:
//           break;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;

//     final usernameController = TextEditingController();
//     final passwordController = TextEditingController();
//     final confirmpasswordController = TextEditingController();
//     final emailController = TextEditingController();
//     final nicController = TextEditingController();

//     final txtUserName = Container(
//         height: 45.0,
//         child: TextField(
//             controller: usernameController,
//             style: TextStyle(color: Theme.of(context).primaryColor),
//             decoration: InputDecoration(
//               prefixIcon: const Icon(
//                 Icons.person,
//                 color: Colors.teal,
//               ),
//               hintText: 'Username',
//               hintStyle: TextStyle(
//                   fontSize: 15.0, color: Theme.of(context).primaryColor),
//               contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//               border:
//                   OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(25.0),
//                 borderSide: BorderSide(
//                   width: 1,
//                   color: Theme.of(context).primaryColor,
//                 ),
//               ),
//             )));

//     final password = Container(
//       height: 45,
//       margin: EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
//       child: new Theme(
//           data: new ThemeData(
//             primaryColor: Theme.of(context).primaryColor,
//             primaryColorDark: Theme.of(context).primaryColor,
//           ),
//           child: TextField(
//             controller: passwordController,
//             obscureText: true,
//             style: TextStyle(color: Theme.of(context).primaryColor),
//             decoration: InputDecoration(
//               hintText: 'Password',
//               hintStyle: TextStyle(
//                   fontSize: 15.0, color: Theme.of(context).primaryColor),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(25.0),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(25.0),
//                 borderSide: BorderSide(
//                   width: 1,
//                   color: Theme.of(context).primaryColor,
//                 ),
//               ),
//             ),
//           )),
//     );

//     final confirm = Container(
//       height: 45,
//       margin: EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
//       child: new Theme(
//           data: new ThemeData(
//             primaryColor: Theme.of(context).primaryColor,
//             primaryColorDark: Theme.of(context).primaryColor,
//           ),
//           child: TextField(
//             controller: confirmpasswordController,
//             obscureText: true,
//             style: TextStyle(color: Theme.of(context).primaryColor),
//             decoration: InputDecoration(
//               hintText: 'Confirm Password',
//               hintStyle: TextStyle(
//                   fontSize: 15.0, color: Theme.of(context).primaryColor),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(25.0),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(25.0),
//                 borderSide: BorderSide(
//                   width: 1,
//                   color: Theme.of(context).primaryColor,
//                 ),
//               ),
//             ),
//           )),
//     );

//     final email = Container(
//       height: 45,
//       margin: EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
//       child: new Theme(
//           data: new ThemeData(
//             primaryColor: Theme.of(context).primaryColor,
//             primaryColorDark: Theme.of(context).primaryColor,
//           ),
//           child: TextField(
//             controller: emailController,
//             style: TextStyle(color: Theme.of(context).primaryColor),
//             decoration: InputDecoration(
//               hintText: 'Email',
//               hintStyle: TextStyle(
//                   fontSize: 15.0, color: Theme.of(context).primaryColor),
//               border: OutlineInputBorder(
//                 borderSide: BorderSide(color: Theme.of(context).primaryColor),
//                 borderRadius: BorderRadius.circular(25.0),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(25.0),
//                 borderSide: BorderSide(
//                   width: 1,
//                   color: Theme.of(context).primaryColor,
//                 ),
//               ),
//             ),
//           )),
//     );

//     final nic = Container(
//       height: 45,
//       margin: EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
//       child: new Theme(
//           data: new ThemeData(
//             primaryColor: Theme.of(context).primaryColor,
//             primaryColorDark: Theme.of(context).primaryColor,
//           ),
//           child: TextField(
//             controller: nicController,
//             style: TextStyle(color: Theme.of(context).primaryColor),
//             decoration: InputDecoration(
//               hintText: 'NIC No',
//               hintStyle: TextStyle(
//                   fontSize: 15.0, color: Theme.of(context).primaryColor),
//               border: OutlineInputBorder(
//                 borderSide: BorderSide(color: Theme.of(context).primaryColor),
//                 borderRadius: BorderRadius.circular(25.0),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(25.0),
//                 borderSide: BorderSide(
//                   width: 1,
//                   color: Theme.of(context).primaryColor,
//                 ),
//               ),
//             ),
//           )),
//     );

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Step One-Sign Up-Login User Details',
//           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//       ),
//       body: Container(
//         child: ListView(
//           children: <Widget>[
//             Container(
//               height: 45,
//               margin: EdgeInsets.only(
//                   top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: <Widget>[
//                   txtUserName,
//                   Container(
//                     width: (width / 4) * 1.7,
//                     child: Text('Are you a Sri Lankan?',
//                         softWrap: true,
//                         textAlign: TextAlign.start,
//                         style: TextStyle(
//                           fontSize: 15.0,
//                           color: Theme.of(context).primaryColor,
//                         )),
//                   ),
//                   new Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       new Radio(
//                         value: 0,
//                         groupValue: _radioValue,
//                         onChanged: _handleRadioValueChange,
//                       ),
//                       new Text(
//                         'Yes',
//                         style: new TextStyle(
//                           fontSize: 15.0,
//                           color: Theme.of(context).primaryColor,
//                         ),
//                       ),
//                       new Radio(
//                         value: 1,
//                         groupValue: _radioValue,
//                         onChanged: _handleRadioValueChange,
//                       ),
//                       new Text(
//                         'No',
//                         style: new TextStyle(
//                           fontSize: 15.0,
//                           color: Theme.of(context).primaryColor,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               height: 45,
//               margin: EdgeInsets.only(
//                   top: 15.0, left: 20.0, bottom: 10.0, right: 20.0),
//               child: FlatButton(
//                 color: Theme.of(context).primaryColor,
//                 textColor: Colors.white,
//                 disabledColor: Colors.grey,
//                 disabledTextColor: Colors.black,
//                 padding: EdgeInsets.all(8.0),
//                 splashColor: Colors.blueAccent,
//                 onPressed: () {
//                   /*...*/
//                 },
//                 child: Text(
//                   "Next",
//                   style: TextStyle(fontSize: 15.0),
//                 ),
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(25.0),
//                     side: BorderSide(
//                       color: Theme.of(context).primaryColor,
//                     )),
//               ),
//             ),
//             Container(
//               height: 45,
//               margin: EdgeInsets.only(
//                   top: 1.0, left: 20.0, bottom: 10.0, right: 20.0),
//               child: FlatButton(
//                 color: Theme.of(context).primaryColor,
//                 textColor: Colors.white,
//                 disabledColor: Colors.grey,
//                 disabledTextColor: Colors.black,
//                 padding: EdgeInsets.all(8.0),
//                 splashColor: Colors.blueAccent,
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: Text(
//                   "Back",
//                   style: TextStyle(fontSize: 15.0),
//                 ),
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(25.0),
//                     side: BorderSide(
//                       color: Theme.of(context).primaryColor,
//                     )),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
