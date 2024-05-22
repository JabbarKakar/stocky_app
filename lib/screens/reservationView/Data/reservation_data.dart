import 'package:stocki_app/appConstants/app_images.dart';
import 'package:stocki_app/screens/reservationView/Models/reservation_model.dart';

class ReservationData {
  final reservationData = <ReservationModel>[
    ReservationModel(
        image: AppImages.shoePng,
        title: "Nike Adapt BB",
        date: "12-January-2022",
        brand: "JD Sports",
        price: "\$478.00"),
    ReservationModel(
        image: AppImages.shirtPng,
        title: "Nike T-Shirt",
        date: "12-January-2022",
        brand: "Tech Sports",
        price: "\$78.00"),
    ReservationModel(
        image: AppImages.bagPng,
        title: "Nike Bag BB",
        date: "12-January-2022",
        brand: "Alamgeer",
        price: "\$478.00"),
    ReservationModel(
        image: AppImages.footballPng,
        title: "Nike Football",
        date: "12-January-2022",
        brand: "Feet store",
        price: "\$150.00"),
  ];
}
