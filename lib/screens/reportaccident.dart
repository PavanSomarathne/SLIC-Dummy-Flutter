import 'package:flutter/material.dart';
import 'dart:async';
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:location/location.dart';
import 'package:url_launcher/url_launcher.dart';

class ReportAccident extends StatefulWidget {
  @override
  _ReportAccidentState createState() => _ReportAccidentState();
}

class _ReportAccidentState extends State<ReportAccident> {
  Completer<GoogleMapController> _controller = Completer();
  CameraPosition _currentPosition = CameraPosition(
    target: LatLng(6.9147, 79.9729),
    zoom: 15.4746,
  );
  Set<Marker> markers = Set();
  Set<Marker> markers1 = Set();

  bool askingPermission = false;
  bool firstTime = true;
  LocationData _locationData;
  String _value;
  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      title: Text("Motor Policy Details"),
    );

    final deviceAvailaHeigh = (MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top);
    final devicewidth = (MediaQuery.of(context).size.width);

    var padding = MediaQuery.of(context).padding;

    return Scaffold(
        appBar: appbar,
        //backgroundColor: Color.fromRGBO(0, 172, 192, 1),
        body: ExpandableBottomSheet(
          background: Container(
            height: deviceAvailaHeigh * 0.7,
            width: devicewidth,
            margin: EdgeInsets.only(top: deviceAvailaHeigh * 0.1),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 6,
                      child: Container(
                        width: devicewidth * 0.8,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Emergency Service",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: deviceAvailaHeigh * 0.5 * 0.03,
                            ),
                            Icon(
                              Icons.favorite,
                              size: deviceAvailaHeigh * 0.5 * 0.5,
                              color: Colors.red,
                            ),
                            Container(
                              margin: EdgeInsets.all(8.0),
                              child: DropdownButton<String>(
                                isExpanded: true,
                                items: [
                                  DropdownMenuItem<String>(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Icon(Icons.car_repair),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('BD51 SMR')
                                      ],
                                    ),
                                    value: '1',
                                  ), //item1

                                  DropdownMenuItem<String>(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Icon(Icons.bus_alert),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('HZ21 TTR')
                                      ],
                                    ),
                                    value: '2',
                                  ), //second item

                                  DropdownMenuItem<String>(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Icon(Icons.motorcycle),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('50c llgR')
                                      ],
                                    ),
                                    value: '3',
                                  ),
                                ],
                                onChanged: (String value) {
                                  setState(() {
                                    _value = value;
                                  });
                                },
                                hint: Text(
                                  'Vehicle Number',
                                  textAlign: TextAlign.center,
                                ),
                                value: _value,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: RaisedButton.icon(
                                icon: Icon(
                                  Icons.local_police,
                                  color: Colors.white,
                                ),
                                colorBrightness: Brightness.light,
                                hoverColor: Colors.deepPurple,
                                label: Text(
                                  'Call Ambulance',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                color: Colors.pinkAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          persistentHeader: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38.withOpacity(0.6),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 5.0,
                      width: 120.0,
                      color: Color.fromARGB((0.25 * 255).round(), 0, 0, 0),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Select Location',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              )),
          expandableContent: Container(
            height: deviceAvailaHeigh * 0.75,
            width: devicewidth,
            //  color: Colors.white,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
            ),
            child: Container(
              child: SizedBox(
                height: deviceAvailaHeigh - 130,
                child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: _currentPosition,
                  myLocationEnabled: true,
                  myLocationButtonEnabled: true,
                  markers: markers,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          elevation: 6,
          hoverElevation: 12,
          child: Icon(
            Icons.call_outlined,
            size: 29,
            color: Colors.white,
          ),
        ));
  }
}
