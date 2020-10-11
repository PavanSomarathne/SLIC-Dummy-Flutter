import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:slic_dummy_flutter/screens/Motor_policy_details_screen.dart';
import 'package:slic_dummy_flutter/screens/covid_dashboard.dart';
import 'package:slic_dummy_flutter/screens/news_screen.dart';
import 'package:slic_dummy_flutter/screens/reportaccident.dart';
import 'package:slic_dummy_flutter/screens/road_assistance.dart';
import 'package:slic_dummy_flutter/screens/your_profile_view.dart';
import 'package:slic_dummy_flutter/widgets/LifePolicy.dart';
import 'package:slic_dummy_flutter/widgets/MotorPolicy.dart';
import 'package:slic_dummy_flutter/screens/ContactUs.dart';

import './tabs_insurance_details.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final lPolicies = [
    {'name': 'Divi Thilina', 'no': 'D1022', 'stat': 'INFORCE', 'y': '18'},
    {'name': 'Divi Thilina', 'no': 'D1033', 'stat': 'EXPIRED', 'y': '0'},
    {'name': 'Divi Thilina', 'no': 'D8062', 'stat': 'EXPIRED', 'y': '0'},
  ];

  final mPolicies = [
    {
      'name': 'CM PVT CAR',
      'no': 'M1052',
      'stat': 'INFORCE',
      'y': '13',
      'total': 'Rs 2,600,000',
      'renewal': 'Rs 74,351',
      'startdate': '23/10/2019',
      'endDate': '22/12/2020',
      'adrrsline1': '167/1A,',
      'adrrsline2': 'Thalahena',
      'adrrsline3': 'Malabe',
      'fullname': 'Sumudu Lakruwan',
      'acti': 'Active'
    },
    {
      'name': 'PVT CAR',
      'no': 'M1053',
      'stat': 'INFORCE',
      'y': '11',
      'total': 'Rs 1,800,000',
      'renewal': 'Rs 64,351',
      'startdate': '16/08/2019',
      'endDate': '08/12/2020',
      'adrrsline1': '167/1A,',
      'adrrsline2': 'Thalahena',
      'adrrsline3': 'Malabe',
      'fullname': 'Sumudu Lakruwan',
      'acti': 'Active'
    },
    {
      'name': 'PVT BIKE',
      'no': 'M8042',
      'stat': 'INFORCE',
      'y': '5',
      'total': 'Rs 1,200,000',
      'renewal': 'Rs 54250',
      'startdate': '16/05/2019',
      'endDate': '10/12/2020',
      'adrrsline1': '167/1A,',
      'adrrsline2': 'Thalahena',
      'adrrsline3': 'Malabe',
      'fullname': 'Ushan Perera',
      'acti': 'Active'
    },
    {
      'name': 'PVT MOTOR E',
      'no': 'M8062',
      'stat': 'EXPIRED',
      'y': '0',
      'total': 'Rs 1,400,000',
      'renewal': 'Rs 82250',
      'startdate': '25/04/2019',
      'endDate': '05/02/2020',
      'adrrsline1': '167/1A,',
      'adrrsline2': 'Thalahena',
      'adrrsline3': 'Malabe',
      'fullname': 'Ushan Perera',
      'acti': 'Expired'
    },
  ];
  void selectInsuranceproducts(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return TabsInsurancedetails();
    }));
  }

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
                    // Update the state of the app.
                    // ...
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
                    child: ListView.builder(
                        itemCount: lPolicies.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => LifePolicy(news: results[index]),
                              //   ),
                              // );
                            },
                            child: LifePolicy(lPolicies[index]),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(
                      MdiIcons.arrowRightDropCircle,
                      size: 32,
                      color: Colors.black,
                    ),
                  ),
                  Text("Motor Insurance Policies"),
                  new Divider(
                    color: Colors.black38,
                  ),
                  Container(
                    height: 140,
                    child: ListView.builder(
                        itemCount: mPolicies.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MotorPolicyDetails(
                                    policy: mPolicies[index],
                                  ),
                                ),
                              );
                            },
                            child: MotorPolicy(mPolicies[index]),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(
                      MdiIcons.arrowRightDropCircle,
                      size: 32,
                      color: Colors.black,
                    ),
                  )
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CovidDashboard(),
                            ),
                          );
                        },
                        child: Container(
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
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReportAccident(),
                            ),
                          );
                        },
                        child: Container(
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
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => RoadAssistance(),
                          //   ),
                          // );
                        },
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RoadAssistance(),
                              ),
                            );
                          },
                          child: Container(
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => selectInsuranceproducts(context),
                        child: Container(
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewsScreen(),
                            ),
                          );
                        },
                        child: Container(
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
