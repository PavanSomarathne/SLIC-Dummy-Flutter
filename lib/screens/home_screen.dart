import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:slic_dummy_flutter/screens/Mcash.dart';
import 'package:slic_dummy_flutter/screens/your_profile_view.dart';
import 'package:slic_dummy_flutter/widgets/LifePolicy.dart';
import 'package:slic_dummy_flutter/widgets/MotorPolicy.dart';
import 'package:slic_dummy_flutter/screens/ContactUs.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    return Scaffold(
        drawer: Drawer(
          child: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        tileMode: TileMode.mirror,
                        colors: [
                          Color.fromRGBO(2, 204, 191, 100),
                          Color.fromRGBO(0, 172, 192, 100),
                        ]),
                  ),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("images/avt.png"),
                        height: 80.0,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("User Name",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                      Text("ID NO : XXXXXXV",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(
                    MdiIcons.accountCircle,
                    color: Colors.black,
                    size: 40,
                  ),
                  title: Text(
                    'View/Edit Profile',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => YourProfileView()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(
                    MdiIcons.helpCircle,
                    color: Colors.black,
                    size: 40,
                  ),
                  title: Text(
                    'Help',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(
                    MdiIcons.briefcaseAccount,
                    color: Colors.black,
                    size: 40,
                  ),
                  title: Text(
                    'Privacy Policy',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(
                    MdiIcons.contacts,
                    color: Colors.black,
                    size: 40,
                  ),
                  title: Text(
                    'Contact Us',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactUs()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(
                    MdiIcons.cog,
                    color: Colors.black,
                    size: 40,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Mcash()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(
                    MdiIcons.logout,
                    color: Colors.black,
                    size: 40,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text('Dashboard'),
          backgroundColor: Color.fromRGBO(0, 172, 192, 100),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: height - (padding.top + 160 + kToolbarHeight),
              child: Column(
                children: [
                  Text("Life Insurance Policies"),
                  new Divider(
                    color: Colors.black38,
                  ),
                  Container(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(3, (index) {
                        return LifePolicy();
                      }),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Motor Insurance Policies"),
                  new Divider(
                    color: Colors.black38,
                  ),
                  Container(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(3, (index) {
                        return MotorPolicy();
                      }),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 160,
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(2, 204, 191, 100),
                      Color.fromRGBO(0, 172, 192, 100),
                    ]),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 7,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 68,
                        width: 100,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                          child: Column(
                            children: [
                              Icon(
                                Icons.web,
                                size: 40,
                                color: Colors.black,
                              ),
                              Text(
                                "E-Services",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 68,
                        width: 100,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                          child: Column(
                            children: [
                              Image(
                                image: new AssetImage("images/acc.png"),
                                width: 42,
                                height: 42,
                                alignment: Alignment.center,
                              ),
                              Text(
                                "Accident",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 68,
                        width: 100,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                          child: Column(
                            children: [
                              Image(
                                image: new AssetImage("images/tow.png"),
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                              ),
                              Text(
                                "Assistance",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 68,
                        width: 100,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                          child: Column(
                            children: [
                              Icon(
                                Icons.work,
                                size: 40,
                                color: Colors.black,
                              ),
                              Text(
                                "Products",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 68,
                        width: 100,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                          child: Column(
                            children: [
                              Icon(
                                Icons.new_releases,
                                size: 40,
                                color: Colors.black,
                              ),
                              Text(
                                "Offers",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 68,
                        width: 100,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                          child: Column(
                            children: [
                              Icon(
                                Icons.library_books,
                                size: 40,
                                color: Colors.black,
                              ),
                              Text(
                                "News",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
