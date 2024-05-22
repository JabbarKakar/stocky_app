import 'package:stocki_app/appConstants/app_images.dart';
import 'package:stocki_app/screens/searchView/Models/search_model.dart';

class SearchData {
  final searchData = <SearchModel>[
    SearchModel(
        image: AppImages.shoePng,
        title: "Nike Adapt BB",
        price: "\$478.00"),
    SearchModel(
        image: AppImages.shirtPng,
        title: "Nike T-Shirt",
        price: "\$78.00"),
    SearchModel(
        image: AppImages.bagPng,
        title: "Nike Bag BB",
        price: "\$478.00"),
    SearchModel(
        image: AppImages.bag2Png,
        title: "Nike Adapt BB",
        price: "\$51.00"),
    SearchModel(
        image: AppImages.bag3Png,
        title: "Nike Bag ACB",
        price: "\$347.00"),
    SearchModel(
        image: AppImages.footballPng,
        title: "Nike Football",
        price: "\$150.00"),
    SearchModel(
        image: AppImages.socksPng,
        title: "Nike Socks ",
        price: "\$120.00"),
  ];
}
