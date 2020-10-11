import 'package:flutter/material.dart';
import './insurance_solutions.dart';
import './generalinsurance_solution.dart';

class TabsInsurancedetails extends StatefulWidget {
  @override
  _TabsInsurancedetailsState createState() => _TabsInsurancedetailsState();
}

class _TabsInsurancedetailsState extends State<TabsInsurancedetails> {
  bool activeSearch;
  String passinVal;

  @override
  void initState() {
    super.initState();
    activeSearch = false;
    passinVal = '';
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: _appBar(),
        body: TabBarView(
          children: <Widget>[
            InsuranceSolutions(passinVal),
            GeneralInsuranceSolutions(passinVal),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _appBar() {
    if (activeSearch) {
      return AppBar(
          leading: Icon(Icons.search),
          title: TextField(
            style: TextStyle(fontSize: 20.0, color: Colors.white),
            onChanged: (x) {
              _search(x);
            },
            decoration: InputDecoration(
                hintText: "Search Insurance",
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.white70),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                )),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () =>
                  setState(() => {activeSearch = false, passinVal = ''}),
            )
          ],
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
          ));
    } else {
      return AppBar(
          title: Text("Insurance Solutions"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => setState(() => activeSearch = true),
            ),
          ],
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
          ));
    }
  }

  void _search(String queryString) {
    print('search called : $queryString');
    setState(() {
      passinVal = queryString;
    });
  }
}
