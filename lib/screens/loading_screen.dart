import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    try {
      Position pos = await Geolocator().getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
      );
      print(pos);
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    this.getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
