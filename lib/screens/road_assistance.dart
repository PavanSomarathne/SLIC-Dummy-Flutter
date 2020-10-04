import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:slic_dummy_flutter/screens/your_profile_view.dart';
import 'package:slic_dummy_flutter/widgets/LifePolicy.dart';
import 'package:slic_dummy_flutter/widgets/MotorPolicy.dart';

class RoadAssistance extends StatefulWidget {
  @override
  _RoadAssistanceState createState() => _RoadAssistanceState();
}

class _RoadAssistanceState extends State<RoadAssistance> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(7.8731, 80.7718),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
    target: LatLng(6.9147, 79.9729),
  );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    return Scaffold(
      appBar: AppBar(
        title: Text('Road Assitance'),
        backgroundColor: Color.fromRGBO(0, 172, 192, 100),
      ),
      body: Stack(children: <Widget>[
        GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
        DraggableScrollableSheet(
          initialChildSize: 0.08,
          minChildSize: 0.01,
          builder: (BuildContext context, ScrollController scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Text("Emeregency Services"),
              ),
            );
          },
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _goToTheLake,
        child: Icon(MdiIcons.crosshairsGps),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
