import 'package:flutter/material.dart';
import 'package:slic_dummy_flutter/screens/news_detail.dart';
import 'package:slic_dummy_flutter/screens/offers_detail.dart';
import 'package:slic_dummy_flutter/widgets/offers_item.dart';

class OffersScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<OffersScreen> {
  bool activeSearch;

  var offersItems = [
    {
      'title': 'SJC Recovery (Pvt) Ltd',
      'url': 'https://www.srilankainsurance.lk/Parnerships/images/recovery.png',
      'date': ' 2020/09/11',
      'time': '12:34 AM',
      'news':
          '''Services are provided  from anywhere in Sri Lanka at any time of the day or night.The closest recovery vehicle available will be assigned to you assuring the fastest service.
            Available 24/7 call center 011-789-9999. More details, log-on to Official Web:www.sjcrecovery.lk'''
    },
    {
      'title': 'Hybrid Hub',
      'date': ' 2020/09/09',
      'time': '11:34 PM',
      'url':
          'https://www.srilankainsurance.lk/Parnerships/images/hybridhubLogo.png',
      'news': '''Periodic Maintenance Service - 25% Labour Off
Engine Tune up – 25% Labour Off
A/C Repairs – 25% Labour Off
Electrical Repair – 25% Labour Off
Hybrid Battery Health Check – 25% Labour Off
Suspension Repairs – 25% Labour Off
Any other Mechanical or Electrical Repairs – 25% Labour Off'''
    },
    {
      'title': 'You Drink We Drive',
      'url':
          'https://www.srilankainsurance.lk/Parnerships/images/youdrinkwedriveWebLogo.png',
      'date': ' 2020/08/12',
      'time': '11:38 AM',
      'news':
          '''Regular package:	Rs 2,000/=	:15 Km and 15 minute waiting time	Rs 50/= per Km beyond 15 km	Rs 250/= per each 15 minute slot after first 15 minutes	No waiting charge for road traffic
                    Sri Lankan Insurance customers/clients 10% Discount	Rs 1,800/=	15 Km and 15 minute waiting time	Rs 45/= per Km beyond 15 km	Rs 225/= per each 15 minute slot after first 15 minutes	No waiting charge for road traffic'''
    },
    {
      'date': ' 2020/06/12',
      'time': '10:34 AM',
      'title':
          'Special offers for SLIC comprehensive policyholders from Auto Miraj',
      'url': 'https://www.srilankainsurance.lk/Parnerships/images/amLogo.png',
      'news':
          '''Labour charges will be waved off for 3 full lubricating services per annum ,This is applicable when total value of lubricating service exceeded Rs. 10,000/- & when customer purchase materials from Auto Miraj. If customer bring material from outside still they are entitled for 50% discount on labour charges A total of 12 free body washes with vacuum per year.(one per month).Offer valid in weekdays only.10% Off for Nano Coating
Any form of Nano coating from Auto Miraj outlet will be offered with 10% discount on total Nano coating package.25% off for Repairs 25% discount on workmanship on any mechanical repair. .'''
    }
  ];
  var results;
  @override
  void initState() {
    super.initState();
    activeSearch = false;
    results = offersItems;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: _appBar(),
      body: ListView.builder(
          itemCount: results.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OffersDetail(offers: results[index]),
                  ),
                );
              },
              child: OffersItem(results[index]),
            );
          }),
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
              hintText: "Search Offers",
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
            onPressed: () => setState(() => {
                  activeSearch = false,
                  results = offersItems,
                }),
          )
        ],
      );
    } else {
      return AppBar(
        title: Text("Offers"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => setState(() => activeSearch = true),
          ),
        ],
      );
    }
  }

  void _search(String queryString) {
    print('search called : $queryString');
    setState(() {
      results = offersItems
          .where((e) =>
              e['title'].toLowerCase().startsWith(queryString.toLowerCase()))
          .toList();
    });
  }
}
