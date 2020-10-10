import 'package:flutter/material.dart';
import './insurance_solutions.dart';
import './generalinsurance_solution.dart';

class TabsInsurancedetails extends StatefulWidget {
  @override
  _TabsInsurancedetailsState createState() => _TabsInsurancedetailsState();
}

class _TabsInsurancedetailsState extends State<TabsInsurancedetails> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Insurance Solutions',
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.favorite,
                ),
                text: 'Life Insurance',
              ),
              Tab(
                icon: Icon(
                  Icons.beach_access,
                ),
                text: 'General Insurance',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            InsuranceSolutions(),
            GeneralInsuranceSolutions(),
          ],
        ),
      ),
    );
  }
}
