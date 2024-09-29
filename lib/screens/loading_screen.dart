import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    findLocation();
  }

  void findLocation() async {
    Location location = Location();
    await location.getLocation();
    print(location.longitudes);
    print(location.latitudes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*  body: Center(
        child: ElevatedButton(
          onPressed: () {
            getLocation();
          },
          child: Text('Get Location'),
        ),
      ),*/
        );
  }
}
