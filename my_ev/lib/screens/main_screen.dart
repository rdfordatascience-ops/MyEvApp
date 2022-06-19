
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my_ev/complex_widgets/basicdetails.dart';
import 'package:my_ev/providers/historyProvider.dart';
import 'package:my_ev/screens/history_screen.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MainScreen extends StatelessWidget {
  static const String routeName = '/mainScreen';

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Flutter Google Maps Demo',
    //   home: MapSample(),
    // );
    var appBar = AppBar(title: Text("MyEv"),
      actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(HistoryScreen.routeName);
            },
            icon: const Icon(
              Icons.receipt_long_rounded,
              color: Colors.black54,

            ),
            color: Colors.white,
            iconSize: 40,
          )
        ],
    );
    return Scaffold(
        appBar: appBar,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: (MediaQuery.of(context).size.height - appBar.preferredSize.height) * 0.75 - 25,
              child:  MapSample(),
            ),
            Container(
              height: (MediaQuery.of(context).size.height - appBar.preferredSize.height) * 0.25,
              // child:  BasicDetails(ownerName!, mobileNumber!, batteryHealth!, totalOdometer!)
              child: BasicDetails()
            )
          ],
        )
      );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
