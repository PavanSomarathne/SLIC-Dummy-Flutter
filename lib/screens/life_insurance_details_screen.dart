import 'dart:ui';

import 'package:flutter/material.dart';
import '../models/dummyinsurance_data.dart';

class LifeInsuranceDetails extends StatelessWidget {
  final String id;
  LifeInsuranceDetails({this.id});

  double _width;
  double _height;
  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;

    final selectedLifeInsur =
        DUMMY_LiFEINSURANCE.firstWhere((insuranceitm) => insuranceitm.id == id);

    final appbar = AppBar(
      title: Text('${selectedLifeInsur.title}'),
    );

    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: (_height - appbar.preferredSize.height) * 1.4,
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
                      selectedLifeInsur.imageurl,
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
                              '${selectedLifeInsur.title}',
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
                                    '${selectedLifeInsur.descrption}',
                                    style: TextStyle(
                                      wordSpacing: 5,
                                      fontSize: 14,
                                    ),
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
                                          child:
                                              Text(selectedLifeInsur.benefits1),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          child:
                                              Text(selectedLifeInsur.benefits2),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          child:
                                              Text(selectedLifeInsur.benefits3),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          child:
                                              Text(selectedLifeInsur.benefits4),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          child:
                                              Text(selectedLifeInsur.benefits5),
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
                                          child: Text(
                                              selectedLifeInsur.eligibility1),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          child: Text(
                                              selectedLifeInsur.eligibility2),
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
