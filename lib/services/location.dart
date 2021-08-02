import 'package:geolocator/geolocator.dart';

class Location {
  double? latidute;
  double? longtide;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      this.latidute = position.latitude;
      this.longtide = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
