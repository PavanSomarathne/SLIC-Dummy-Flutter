import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:slic_dummy_flutter/screens/your_profile_view.dart';
import 'package:getwidget/getwidget.dart';

class LifePolicyDetails extends StatefulWidget {
  @override
  _LifePolicyDetailsState createState() => _LifePolicyDetailsState();
}

class _LifePolicyDetailsState extends State<LifePolicyDetails> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Life Policy Details"),
      ),
      body: ListView(
        children: [
          Container(
              height: 45,
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2,
                      color: Colors.black26,
                      offset: Offset(0, 3))
                ],
              ),
              child: Center(
                child: Text(
                  "Policy No: XXXX",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
          Container(
            margin: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: (width / 4) * 1.2,
                  child: Text('Name  ',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
                Container(
                  width: (width / 4) * 2.5,
                  child: Text(': R.Mahesh Bandara Somarathne',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: (width / 4) * 1.2,
                  child: Text('Address ',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
                Container(
                  width: (width / 4) * 2.5,
                  child: Text(': No 421/5, \n  Paragahamulla, Hindagolla',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: (width / 4) * 1.2,
                  child: Text('Sum Insured ',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
                Container(
                  width: (width / 4) * 2.5,
                  child: Text(': 1,000,000.00',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: (width / 4) * 1.2,
                  child: Text('Policy Type ',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
                Container(
                  width: (width / 4) * 2.5,
                  child: Text(': Divi Thilina - \n  Endowment Assurance',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: (width / 4) * 1.2,
                  child: Text('Term  ',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
                Container(
                  width: (width / 4) * 2.5,
                  child: Text(': 24',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: (width / 4) * 1.2,
                  child: Text('Mode  ',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
                Container(
                  width: (width / 4) * 2.5,
                  child: Text(': Monthly',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: (width / 4) * 1.2,
                  child: Text('Started Date ',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
                Container(
                  width: (width / 4) * 2.5,
                  child: Text(': 2015/06/26',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: (width / 4) * 1.2,
                  child: Text('Policy Status  ',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
                Container(
                  width: (width / 4) * 2.5,
                  child: Text(': Inforce',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: (width / 4) * 1.2,
                  child: Text('Last Premium Date ',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
                Container(
                  width: (width / 4) * 2.5,
                  child: Text(': 2020/10',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: (width / 4) * 1.2,
                  child: Text('Premium Amount',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
                Container(
                  width: (width / 4) * 2.5,
                  child: Text(': 6,624.00',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: (width / 4) * 1.2,
                  child: Text('Last Due Paid Date',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
                Container(
                  width: (width / 4) * 2.5,
                  child: Text(': Not Paid',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17.0,
                      )),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2, color: Colors.black26, offset: Offset(0, 3))
              ],
            ),
            padding: EdgeInsets.all(0.0),
            margin: EdgeInsets.only(bottom: 25.0, left: 20.0, right: 20.0),
            child: GFAccordion(
                margin: EdgeInsets.all(0.0),
                collapsedTitleBackgroundColor: Color.fromRGBO(0, 172, 193, 1.0),
                expandedTitleBackgroundColor: Color.fromRGBO(0, 172, 193, 1.0),
                titleChild: Text(
                  "Covers",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                  ),
                ),
                contentChild: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('data'),
                    Text('data'),
                  ],
                ),
                collapsedIcon: Icon(
                  Icons.arrow_drop_down,
                  size: 25.0,
                  color: Colors.white,
                ),
                expandedIcon: Icon(
                  Icons.arrow_drop_up,
                  size: 25.0,
                  color: Colors.white,
                )),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2, color: Colors.black26, offset: Offset(0, 3))
              ],
            ),
            padding: EdgeInsets.all(0.0),
            margin: EdgeInsets.only(bottom: 5.0, left: 20.0, right: 20.0),
            child: GFAccordion(
              margin: EdgeInsets.all(0.0),
              collapsedTitleBackgroundColor: Color.fromRGBO(0, 172, 193, 1.0),
              expandedTitleBackgroundColor: Color.fromRGBO(0, 172, 193, 1.0),
              titleChild: Text(
                "Bonus",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                ),
              ),
              contentChild: Column(children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('Bonous Date : ',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 17.0,
                          )),
                      Text('2018-12-21',
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
                      Text('Year Bonus : ',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 17.0,
                          )),
                      Text('125,000.00',
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
                      Text('Cumulative bonus : ',
                          style: TextStyle(
                            fontSize: 17.0,
                          )),
                      Text('500,000.00',
                          style: TextStyle(
                            fontSize: 17.0,
                          )),
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
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2, color: Colors.black26, offset: Offset(0, 3))
              ],
            ),
            padding: EdgeInsets.all(0.0),
            margin: EdgeInsets.only(
                bottom: 5.0, left: 20.0, right: 20.0, top: 20.0),
            child: GFAccordion(
                margin: EdgeInsets.all(0.0),
                collapsedTitleBackgroundColor: Color.fromRGBO(0, 172, 193, 1.0),
                expandedTitleBackgroundColor: Color.fromRGBO(0, 172, 193, 1.0),
                titleChild: Text(
                  "Premiums Not Credited To Policy",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                  ),
                ),
                contentChild: Column(children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('No data',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 17.0,
                            )),
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
                )),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2, color: Colors.black26, offset: Offset(0, 3))
              ],
            ),
            padding: EdgeInsets.all(0.0),
            margin: EdgeInsets.only(
                bottom: 5.0, left: 20.0, right: 20.0, top: 20.0),
            child: GFAccordion(
                margin: EdgeInsets.all(0.0),
                collapsedTitleBackgroundColor: Color.fromRGBO(0, 172, 193, 1.0),
                expandedTitleBackgroundColor: Color.fromRGBO(0, 172, 193, 1.0),
                titleChild: Text(
                  "Premium Payment History",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                  ),
                ),
                contentChild: Column(children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('No data',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 17.0,
                            )),
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
                )),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2, color: Colors.black26, offset: Offset(0, 3))
              ],
            ),
            padding: EdgeInsets.all(0.0),
            margin: EdgeInsets.only(
                bottom: 5.0, left: 20.0, right: 20.0, top: 20.0),
            child: GFAccordion(
                margin: EdgeInsets.all(0.0),
                collapsedTitleBackgroundColor: Color.fromRGBO(0, 172, 193, 1.0),
                expandedTitleBackgroundColor: Color.fromRGBO(0, 172, 193, 1.0),
                titleChild: Text(
                  "Recent Online Payments",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                  ),
                ),
                contentChild: Column(children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('No data',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 17.0,
                            )),
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
                )),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 2, color: Colors.black26, offset: Offset(0, 3))
              ],
            ),
            margin: EdgeInsets.only(
                left: 40.0, right: 40.0, top: 40.0, bottom: 20.0),
            child: ButtonTheme(
              minWidth: 50.0,
              child: RaisedButton(
                padding: EdgeInsets.all(10.0),
                color: Color.fromRGBO(0, 172, 193, 1.0),
                onPressed: () {},
                child: const Text('PAY NOW',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
