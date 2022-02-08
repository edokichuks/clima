import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  getCurrentLocation() async {
    try {
      LocationPermission permission;
      LocationPermission checkPremission;
      permission = await Geolocator.requestPermission();
      //checkPremission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      } else {
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.low);
        latitude = position.latitude;
        longitude = position.longitude;
      }
    } catch (e) {
      print('ERROR IS $e');
    } ///////////
  }
}

//
// permission = await Geolocator.requestPermission();
// permission = await Geolocator.checkPermission();
// if (permission == LocationPermission.denied) {
// permission = await Geolocator.requestPermission();
// if (permission == LocationPermission.deniedForever) {
// return Future.error('Location Not Available');
// }
// } else {
// throw Exception('Error');
// }
// Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
// latitude = position.latitude;
// longitude = position.longitude;
