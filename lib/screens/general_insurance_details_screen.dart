import 'dart:ui';

import 'package:flutter/material.dart';
import '../models/dummygeneralinsurancedetails.dart';

class GeneralInsuranceDetails extends StatelessWidget {
  final String gIid;
  GeneralInsuranceDetails({this.gIid});

  double _width;
  double _height;
  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;

    final selectedGeneralInsur = DUMMY_GENERALINSURANCEDETAILS
        .firstWhere((insuranceitm) => insuranceitm.gIid == gIid);

    final appbar = AppBar(
      title: Text('${selectedGeneralInsur.gItitle}'),
    );

    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: (_height - appbar.preferredSize.height) * 1.5,
            child: new Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: (MediaQuery.of(context).size.height -
                            appbar.preferredSize.height) *
                        .35,
                    child: Image.asset(
                      selectedGeneralInsur.gIimageurl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: (MediaQuery.of(context).size.height -
                          appbar.preferredSize.height) *
                      .25,
                  left: 15,
                  right: 15,
                  child: Card(
                    elevation: 8,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .90,
                      height: (MediaQuery.of(context).size.height -
                              appbar.preferredSize.height) *
                          1.35,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(12),
                            child: Text(
                              '${selectedGeneralInsur.gItitle}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '${selectedGeneralInsur.gIdescrption}',
                                    style: TextStyle(
                                      wordSpacing: 5,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ]),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 1,
                            ),
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Benefits",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          child: Text(
                                              selectedGeneralInsur.gIbenefits1),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          child: Text(
                                              selectedGeneralInsur.gIbenefits2),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          child: Text(
                                              selectedGeneralInsur.gIbenefits3),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          child: Text(
                                              selectedGeneralInsur.gIbenefits4),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          child: Text(
                                              selectedGeneralInsur.gIbenefits5),
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 1,
                            ),
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Eligibility",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          child: Text(selectedGeneralInsur
                                              .gIeligibility1),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          child: Text(selectedGeneralInsur
                                              .gIeligibility1),
                                        ),
                                        Container(),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
