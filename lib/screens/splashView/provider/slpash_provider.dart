// import 'package:flutter/cupertino.dart';
// import 'package:geolocator/geolocator.dart';
//
// import '../../../appConstants/app_constants.dart';
//
// class SplashProvider extends ChangeNotifier {
//   Future<void> determinePosition() async {
//     bool serviceEnabled;
//     LocationPermission permission;
//
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       print('Location services are disabled.');
//       throw Exception('Location services are disabled.');
//     } else {
//       print('Location services are enabled.');
//     }
//
//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       print('Location permissions are denied');
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         // dont allow
//         print('Location permissions are still denied after request.');
//         throw Exception('Location permissions are denied.');
//       }
//     } else {
//       print('Location permissions are granted.');
//     }
//
//     if (permission == LocationPermission.deniedForever) {
//       print('Location permissions are permanently denied, we cannot request permissions.');
//       throw Exception('Location permissions are permanently denied, we cannot request permissions.');
//     }
//
//     Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
//
//     AppConstant.getLatitude = position.latitude.toString();
//     AppConstant.getLongitude = position.longitude.toString();
//     print('User\'s current position: ${position.latitude}, ${position.longitude}');
//     notifyListeners();
//   }
//
// // Continue with location determination logic...
// }
//
