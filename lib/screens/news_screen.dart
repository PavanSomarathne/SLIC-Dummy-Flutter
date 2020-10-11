import 'package:flutter/material.dart';
import 'package:slic_dummy_flutter/screens/news_detail.dart';
import 'package:slic_dummy_flutter/widgets/news_item.dart';

class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  bool activeSearch;
  FocusNode focusNode;

  var newsItems = [
    {
      'title':
          'Sri Lanka Insurance declares the highest ever life insurance bonus of Rs.8.2 billion',
      'url': 'https://www.srilankainsurance.com/images/news/slic-logo-en.jpg',
      'date': '2020/09/11',
      'time': '12:34 AM',
      'news':
          '''Colombo 12th August 2020: Sri Lanka insurance is proud to declare the largest ever life insurance bonus of Rs. 8.2 billion for the year 2020 to its life insurance policyholders, recording the largest life insurance bonus ever to be declared in the insurance industry of Sri Lanka, this brought total of life insurance bonuses paid to policyholders since 2005 to Rs. 64.6 billion.

With this outstanding achievement Sri Lanka Insurance has upheld the trust placed by the policyholders by endorsing Sri Lanka Insurance life insurance as the life policy with the highest return.

Educating the Sri Lankan people of the importance of a life insurance is an aspect Sri Lanka Insurance holds close to its heart from the inception of its existence. It is in the forefront of propagating the concept of life insurance to every corner of the country.

The trust Sri Lanka Insurance has earned from people of Sri Lanka is evident by the accolades it received. SLIC is ranked ‘The Most Loved Insurance Brand’ and the 3rd ‘Most Loved Consumer Brand’ in the country by Brand Finance.

 Sri Lanka Insurance life insurance basket offers a range of life insurance plans to suit every stage and need of life in today’s competitive market environment.

Recording the largest life insurance fund of Rs.116 billion, the company’s prudent investment management strategies and accumulating life fund have enabled the company to give higher returns to its policyholders.

The nations trusted insurer, has achieved this extraordinary performance while reporting a significant growth in its assets base to Rs. 211 billion, which is again the largest in the insurance industry and securing the Fitch rating AAA (lka) for long term financial stability making it the only insurance company in Sri Lanka to receive AAA (lka) rating and secure the rating for the second consecutive time.

The company is on a mission of being a customer focused company which constantly innovates in providing insurance services to customers and is striving to increase dynamism and expertise of the overall operation of the company. Also the company is focused on expansion of the branch network which currently stands at 158 branches located island wide to provide a convenient service to customers.'''
    },
    {
      'title': 'Viru Abhiman - SLIC\'s Tribute to the Nation',
      'date': '2020/09/09',
      'time': '11:34 PM',
      'url':
          'https://www.srilankainsurance.com/images/news/viru-abhiman-battle-against-covid-pandemic.jpg',
      'news':
          '''Colombo 08th April 2020: The National Insurer, Sri Lanka Insurance, has taken many initiatives to pledge support to the government initiatives in the prevention of the spread of Covid 19. One such initiative was the Rs. 50 lakhs donation made to the Covid 19 Health and Social Security fund last week.

Today Sri Lanka Insurance launches yet another initiative in support of motivating all state sector employees on the front line of Covid 19 service.

VIRU ABHIMAN - a free financial cover for the families of the state sector employees who are actively involved in combatting Covid – 19. The Cover is extended at the unfortunate event of employee’s loss of life due to Covid -19 within in the year 2020.

The Cover VIRU ABHIMAN is extended to all health care employees in the state sector (Eg: Health Ministry Officials, Doctors, Nurses, Attendants, Drivers, Minor workers, Public Health Inspectors, Regional Health Officials etc) Members of the Armed Forces of Sri Lanka (Sri Lanka Army, Sri Lanka Navy, Sri Lanka Air Force) Sri Lanka Police and Civil Defense Force of Sri Lanka , Members of the Divisional Secretariats including field officers, Members of the District Secretariat, Members of the postal department.

This is the first and the only cover in Sri Lanka offered free for our heroes who are taking the front line in ensuring the safety of our people.

As the national insurer to the nation our main objective is to fulfill our duty towards the nation by safeguarding the families of the state sector employees and members of the armed forces who have come forth to protect the country from the COVID 19 pandemic and to assist the national program of the Sri Lankan Government.'''
    },
    {
      'title':
          'Sri Lanka Insurance posts a record profit of Rs. 8.2 billion before taxation',
      'url':
          'https://www.srilankainsurance.com/images/news/chairman-and-ceo.jpg',
      'date': '2020/08/12',
      'time': '11:38 AM',
      'news':
          'Colombo 12th August 2020: Sri Lanka insurance is proud to declare the largest ever life insurance bonus of Rs. 8.2 billion for the year 2020 to its life insurance policyholders, recording the largest life insurance bonus ever to be declared in the insurance industry of Sri Lanka, this brought total of life insurance bonuses paid to policyholders since 2005 to Rs. 64.6 billion.With this outstanding achievement Sri Lanka Insurance has upheld the trust placed by the policyholders by endorsing Sri Lanka Insurance life insurance as the life policy with the highest return.'
    },
    {
      'date': '2020/06/12',
      'time': '10:34 AM',
      'title': 'Sri Lanka Insurance relocates the Pallebadda Branch',
      'url':
          'https://www.srilankainsurance.com/images/news/relocates-the-pallebadda-branch.jpg',
      'news':
          'Colombo 11th March 2020: Sri Lanka Insurance relocates the Pallebadda Branch providing total insurance solutions with a hassle free customer experience for the customers in the area.The relocated branch is located at Ground Floor, K.M.S.Building, Main Street, Pallebadda and opened its doors to customers amidst a gathering of staff members, well-wishers and members from the corporate management. Mr.Rukman Weeraratne - Chief Officer Business Development of SLIC graced the occasion. Along with the Pallebadda branch SLIC now serves customers through an extensive network of 158 branches. .'
    }
  ];
  var results;
  @override
  void initState() {
    super.initState();
    activeSearch = false;
    results = newsItems;
    focusNode = FocusNode();
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
                    builder: (context) => NewsDetail(news: results[index]),
                  ),
                );
              },
              child: NewsItem(results[index]),
            );
          }),
    );
  }

  PreferredSizeWidget _appBar() {
    if (activeSearch) {
      return AppBar(
        leading: Icon(Icons.search),
        title: TextField(
          focusNode: focusNode,
          style: TextStyle(fontSize: 20.0, color: Colors.white),
          onChanged: (x) {
            _search(x);
          },
          decoration: InputDecoration(
              hintText: "Search News",
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
                  results = newsItems,
                }),
          )
        ],
      );
    } else {
      return AppBar(
        title: Text("Coporate News"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(
                () => activeSearch = true,
              );
              focusNode.requestFocus();
            },
          ),
        ],
      );
    }
  }

  void _search(String queryString) {
    print('search called : $queryString');
    setState(() {
      results = newsItems
          .where((e) =>
              e['title'].toLowerCase().startsWith(queryString.toLowerCase()))
          .toList();
    });
  }
}
