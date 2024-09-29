import 'package:geolocator/geolocator.dart';

class Location {
  double longitudes = 25.0;
  double latitudes = 25.0;

  Future<void> getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        locationSettings: LocationSettings(accuracy: LocationAccuracy.low),
      );
      longitudes = position.longitude;
      latitudes = position.latitude;
    } catch (e) {
      print(e);
    }
  }
}
