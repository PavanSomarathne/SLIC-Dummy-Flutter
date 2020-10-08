import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyService extends StatelessWidget {
  final eService;

  // In the constructor, require a Todo.
  EmergencyService({Key key, @required this.eService}) : super(key: key);

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            eService == null ? 'Emergency Service Name' : eService['name']),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: (height - (kToolbarHeight + padding.top)) * 0.3,
            width: width,
            child: Image.asset(
              eService == null ? "images/placeholder.png" : eService['url'],
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(8.0),
            child: Text(
              eService == null ? "Service Name" : eService['name'],
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(20),
            child: Image.asset(
              "images/qr.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: width * 0.9,
            padding: EdgeInsets.all(12),
            child: FlatButton(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  eService == null
                      ? _makePhoneCall("tel://<000000000>")
                      : _makePhoneCall("tel://<${eService['tel']}>");
                },
                color: Theme.of(context).primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      MdiIcons.phone,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      eService == null ? "xxx xxxx xxx " : eService['tel'],
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                )),
          )
        ],
      )),
    );
  }
}
