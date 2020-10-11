import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class MotorPolicyDetails extends StatefulWidget {
  final policy;
  MotorPolicyDetails({Key key, this.policy}) : super(key: key);

  @override
  _MotorPolicyDetailsState createState() => _MotorPolicyDetailsState();
}

class _MotorPolicyDetailsState extends State<MotorPolicyDetails> {
  final appbar = AppBar(
    title: Text("Motor Policy Details"),
  );

  @override
  Widget build(BuildContext context) {
    final deviceAvailaHeigh = (MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top);
    final devicewidth = (MediaQuery.of(context).size.width);
    bool IsActive = widget.policy['acti'] == "Active" ? true : false;

    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  width: 180,
                  height: deviceAvailaHeigh * 0.17,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            'Total',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Text(
                          widget.policy['total'],
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              //deweni mulu card eka
              height: deviceAvailaHeigh * 0.4,
              width: devicewidth * 0.8,
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(1),
                            child: Text(
                              widget.policy['fullname'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(1),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  IsActive
                                      ? Icons.check_circle_outline
                                      : Icons.dangerous,
                                  color: IsActive ? Colors.green : Colors.red,
                                  size: 28,
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  widget.policy['acti'],
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ), //1 row eka pay card eke
                    ),
                    Container(
                      //second row of the card
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: devicewidth * 0.8 * 0.4,
                            height: deviceAvailaHeigh * 0.4 * 0.3,
                            child: Card(
                              elevation: 4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      'Renewal',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      widget.policy['renewal'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: devicewidth * 0.8 * 0.4,
                            height: deviceAvailaHeigh * 0.4 * 0.25,
                            child: Card(
                              elevation: 4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      'Policy No',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      widget.policy['no'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: deviceAvailaHeigh * 0.4 * 0.3,
                      width: devicewidth * 0.8 * 0.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: devicewidth * 0.8 * 0.5,
                            child: RaisedButton(
                              color: Color.fromRGBO(0, 172, 192, 1),
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text('Pay Now',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                  )),
                              elevation: 3,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 14),
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2,
                        color: Colors.black26,
                        offset: Offset(0, 3))
                  ],
                ),
                padding: EdgeInsets.all(0.0),
                margin: EdgeInsets.only(bottom: 5.0, left: 20.0, right: 20.0),
                child: GFAccordion(
                  margin: EdgeInsets.all(0.0),
                  collapsedTitleBackgroundColor:
                      Color.fromRGBO(0, 172, 193, 1.0),
                  expandedTitleBackgroundColor:
                      Color.fromRGBO(0, 172, 193, 1.0),
                  titleChild: Text(
                    "More Details",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                    ),
                  ),
                  contentChild: Column(children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('Start Date : ',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 17.0,
                              )),
                          Text(widget.policy['startdate'],
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 17.0,
                              )),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('End Date : ',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 17.0,
                              )),
                          Text(widget.policy['endDate'],
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 17.0,
                              )),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('Address :',
                              style: TextStyle(
                                fontSize: 17.0,
                              )),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.policy['adrrsline1'],
                                  style: TextStyle(
                                    fontSize: 17.0,
                                  ),
                                ),
                                Text(
                                  widget.policy['adrrsline2'],
                                  style: TextStyle(
                                    fontSize: 17.0,
                                  ),
                                ),
                                Text(
                                  widget.policy['adrrsline3'],
                                  style: TextStyle(
                                    fontSize: 17.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  collapsedIcon: Icon(
                    Icons.arrow_drop_down,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  expandedIcon: Icon(
                    Icons.arrow_drop_up,
                    size: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ), //thani scroll eka
      ),
    );
  }
}
