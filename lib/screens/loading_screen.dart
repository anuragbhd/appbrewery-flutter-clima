import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    Position pos = await Geolocator().getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
    );
    print(pos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //Get the current location
            this.getLocation();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
