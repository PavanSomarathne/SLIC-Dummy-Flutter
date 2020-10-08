import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CovidDashboard extends StatelessWidget {
  // In the constructor, require a Todo.
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 250,
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
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          MdiIcons.arrowLeft,
                          size: 28,
                          color: Colors.white,
                        ),
                        onPressed: null),
                    Center(
                      child: Text(
                        "Covid 19 in Sri Lanka",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: width * 0.4,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.orange[800],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 7,
                            blurRadius: 10,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Affected",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "4500",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width * 0.4,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.red[600],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 7,
                            blurRadius: 10,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Deaths",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "25",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: width * 0.4,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.green[800],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 4,
                            blurRadius: 10,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Recoverd",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "2800",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width * 0.4,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.purple[600],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 7,
                            blurRadius: 10,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Active",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "25",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
