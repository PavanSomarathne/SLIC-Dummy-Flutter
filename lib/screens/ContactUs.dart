// import 'package:flutter/material.dart';

// class ContactUs extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Contact Us',
//           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//       ),
//       body: Row(
//         children: <Widget>[
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 Expanded(
//                   child: Container(
//                     margin: EdgeInsets.only(
//                         top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
//                     child: Text(
//                       "Address:",
//                       style: TextStyle(
//                           color: Theme.of(context).primaryColor,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 545,
//                   margin: EdgeInsets.only(
//                       top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
//                   child: Text(
//                     "Rakshana Mandiraya, No.21 Vauxhall Street, \nColombo 2,Sri Lanka",
//                     style: TextStyle(color: Colors.black),
//                   ),
//                 ),
//                 const SizedBox(height: 6),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                  top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: Text(
                "Address:",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 545,
            margin: EdgeInsets.only(
                top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
            child: Text(
              "Rakshana Mandiraya, No.21 Vauxhall Street, \nColombo 2,Sri Lanka",
              style: TextStyle(color: Colors.black),
            ),
          ),
          
          SizedBox(
            width: width / 2,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 16),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
              ],
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}
