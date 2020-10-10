import 'dart:async';
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:location/location.dart';
import 'package:slic_dummy_flutter/screens/emergency_service.dart';
import 'package:url_launcher/url_launcher.dart';

class RoadAssistance extends StatefulWidget {
  @override
  _RoadAssistanceState createState() => _RoadAssistanceState();
}

class _RoadAssistanceState extends State<RoadAssistance> {
  Completer<GoogleMapController> _controller = Completer();
  CameraPosition _currentPosition = CameraPosition(
    target: LatLng(6.9147, 79.9729),
    zoom: 15.4746,
  );
  Set<Marker> markers = Set();
  Set<Marker> markers1 = Set();

  bool askingPermission = false;
  bool showGarages = false;
  bool showBranches = true;
  bool firstTime = true;
  bool functionCalled = false;

  LocationData _locationData;
  BitmapDescriptor myPosIcon;
  BitmapDescriptor branchIcon;
  BitmapDescriptor garageIcon;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      myPosIcon = await BitmapDescriptor.fromAssetImage(
          ImageConfiguration(size: Size(55, 55)), 'images/me.png');

      branchIcon = await BitmapDescriptor.fromAssetImage(
          ImageConfiguration(size: Size(55, 55)), 'images/home-city.png');

      garageIcon = await BitmapDescriptor.fromAssetImage(
          ImageConfiguration(size: Size(48, 48)), 'images/wrench.png');

      setState(() {});
      loadBranches();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final padding = MediaQuery.of(context).padding;

    var eServices = [
      {'name': 'AyuboLife', 'url': 'images/e1cover.png', "tel": "0117 988 788"},
      {
        'name': 'SJC Recovery',
        'url': 'images/e2cover.jpg',
        "tel": "0117 899 999"
      },
      {
        'name': 'Casons Rent A Car',
        'url': 'images/e3cover.jpg',
        "tel": "077 731 2500"
      },
      {
        'name': 'You Drink We Drive',
        'url': 'images/e4cover.png',
        "tel": "077 740 0040"
      },
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text('Road Assitance'),
          backgroundColor: Color.fromRGBO(0, 172, 192, 100),
        ),
        body: ExpandableBottomSheet(
          background: Stack(children: [
            SizedBox(
              height: height - 130,
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
            Container(
              padding: EdgeInsets.all(5),
              width: width,
              height: height - 240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38.withOpacity(0.6),
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        width: 160,
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30.0,
                              width: 30.0,
                              child: Checkbox(
                                  value: showBranches,
                                  onChanged: (bool newValue) {
                                    newValue
                                        ? loadBranches()
                                        : unloadBranches();
                                    setState(() {
                                      showBranches = newValue;
                                      print(newValue);
                                    });
                                  }),
                            ),
                            Icon(
                              MdiIcons.homeCity,
                              color: Colors.green[700],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Branches',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38.withOpacity(0.6),
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        width: 160,
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30.0,
                              width: 30.0,
                              child: Checkbox(
                                  value: showGarages,
                                  onChanged: (bool newValue) {
                                    newValue ? loadGarages() : unloadGarages();
                                    setState(() {
                                      showGarages = newValue;
                                      print(newValue);
                                    });
                                  }),
                            ),
                            Icon(
                              MdiIcons.hammerWrench,
                              color: Colors.orange[700],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Garages',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  FloatingActionButton(
                    onPressed: () => {
                      getLocation(),
                    },
                    child: Icon(MdiIcons.crosshairsGps),
                  ),
                ],
              ),
            ),
          ]),
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
                      'Emeregency Services',
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
              height: 350,
              child: Container(
                color: Colors.white,
                child: ListView(
                  padding: const EdgeInsets.all(12),
                  children: <Widget>[
                    ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                EmergencyService(eService: eServices[0]),
                          ),
                        );
                      },
                      leading: CircleAvatar(
                        child: Image(
                          image: new AssetImage("images/e1.png"),
                        ),
                      ),
                      title: Text(
                          "Medical Services for SLIC Customers via AyuboLife"),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                EmergencyService(eService: eServices[1]),
                          ),
                        );
                      },
                      leading: CircleAvatar(
                        child: Image(
                          image: new AssetImage("images/e2.jpg"),
                        ),
                      ),
                      title: Text("SJC Recovery (PVT) LTD"),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                EmergencyService(eService: eServices[2]),
                          ),
                        );
                      },
                      leading: CircleAvatar(
                        child: Image(
                          image: new AssetImage("images/e3.jpg"),
                        ),
                      ),
                      title: Text("Cason Rent a Car Emergency Breakdown"),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                EmergencyService(eService: eServices[3]),
                          ),
                        );
                      },
                      leading: CircleAvatar(
                        child: Image(
                          image: new AssetImage("images/e4.png"),
                        ),
                      ),
                      title: Text("You Drink We Drive"),
                    ),
                    Divider(
                      color: Colors.black,
                    )
                  ],
                ),
              )),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniStartFloat);
  }

  getLocation() async {
    Location location = new Location();
    LocationData _locationData1;
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    _locationData1 = await location.getLocation();

    print(_locationData1);
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_currentPosition));
    markers.add(
      Marker(
        markerId: MarkerId('I\'m Here'),
        position: LatLng(_locationData1.latitude, _locationData1.longitude),
        icon: myPosIcon,
      ),
    );
    setState(() {
      _currentPosition = new CameraPosition(
        target: LatLng(_locationData1.latitude, _locationData1.longitude),
        zoom: 13.4746,
      );
    });
  }

  loadGarages() {
    print("laod garages called");
    markers.addAll([
      Marker(
        markerId: MarkerId('SLIC Garage'),
        position: LatLng(6.9217, 79.9739),
        infoWindow: InfoWindow(title: 'SLIC Garage New'),
        icon: garageIcon,
      ),
      Marker(
        markerId: MarkerId('SLIC Garage 2'),
        position: LatLng(6.9197, 79.9639),
        infoWindow: InfoWindow(title: 'SLIC Garage Nugapityiia'),
        icon: garageIcon,
      ),
      Marker(
        markerId: MarkerId('SLIC Garage 3'),
        position: LatLng(6.9087, 79.9729),
        infoWindow: InfoWindow(title: 'SLIC Garage '),
        icon: garageIcon,
      ),
      Marker(
        markerId: MarkerId('SLIC Garage Moratuwa'),
        position: LatLng(6.7935, 79.8776),
        infoWindow: InfoWindow(title: 'SLIC Garage Moratuwa'),
        icon: garageIcon,
      ),
      Marker(
        markerId: MarkerId('SLIC Garage Kaldemulla'),
        position: LatLng(6.8066, 79.8777),
        infoWindow: InfoWindow(title: 'SLIC Garage Kaldemulla'),
        icon: garageIcon,
      ),
      Marker(
        markerId: MarkerId('SLIC Garage 3'),
        position: LatLng(6.7911, 79.8866),
        infoWindow: InfoWindow(title: 'SLIC Garage Rawatawatta'),
        icon: garageIcon,
      ),
      Marker(
        markerId: MarkerId('SLIC Garage 3'),
        position: LatLng(6.8283, 79.8716),
        infoWindow: InfoWindow(title: 'SLIC Garage Dehiwala'),
        icon: garageIcon,
      ),
      Marker(
        markerId: MarkerId('SLIC Garage 3'),
        position: LatLng(6.8407, 79.8649),
        infoWindow: InfoWindow(title: 'SLIC Garage Kadana'),
        icon: garageIcon,
      ),
    ]);
  }

  unloadGarages() {
    print("unlaod garages called");
    markers.removeWhere((x) => x.icon == garageIcon);
  }

  loadBranches() async {
    print("laod branches called");
    markers.addAll([
      Marker(
        markerId: MarkerId('SLIC Branch'),
        position: LatLng(6.9167, 79.9749),
        infoWindow: InfoWindow(title: 'SLIC Branch Hewagama'),
        icon: branchIcon,
      ),
      Marker(
        markerId: MarkerId('SLIC Branch 2'),
        position: LatLng(6.9157, 79.9639),
        infoWindow: InfoWindow(title: 'SLIC Branch Kotahawala'),
        icon: branchIcon,
      ),
      Marker(
        markerId: MarkerId('SLIC Branch Malabe'),
        position: LatLng(6.9287, 79.9729),
        infoWindow: InfoWindow(title: 'SLIC Branch Malabe'),
        icon: branchIcon,
      ),
      Marker(
        markerId: MarkerId('SLIC Branch Panadura'),
        position: LatLng(6.7068, 79.9086),
        infoWindow: InfoWindow(title: 'SLIC Branch Panadura'),
        icon: branchIcon,
      ),
      Marker(
        markerId: MarkerId('SLIC Branch Moratuwa'),
        position: LatLng(6.7880, 79.8853),
        infoWindow: InfoWindow(title: 'SLIC Branch Moratuwa'),
        icon: branchIcon,
      ),
      Marker(
        markerId: MarkerId('SLIC Branch Kaldemulla'),
        position: LatLng(6.8075, 79.8828),
        infoWindow: InfoWindow(title: 'SLIC Branch Kaldemulla'),
        icon: branchIcon,
      ),
      Marker(
        markerId: MarkerId('SLIC Branch Rathmalana'),
        position: LatLng(6.8189, 79.8741),
        infoWindow: InfoWindow(title: 'SLIC Branch Rathmalana'),
        icon: branchIcon,
      ),
      Marker(
        markerId: MarkerId('SLIC Branch Mt lAVINIA'),
        position: LatLng(6.8345, 79.8667),
        infoWindow: InfoWindow(title: 'SLIC Branch Mt lAVINIA'),
        icon: branchIcon,
      ),
    ]);
  }

  unloadBranches() {
    if (firstTime) {
      markers.clear();
      firstTime = false;
      return;
    }
    print("unlaod branches called");
    markers.removeWhere((x) => x.icon == branchIcon);
  }
}
