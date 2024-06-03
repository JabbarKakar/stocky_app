import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:stocki_app/screens/productDetailsView/model.dart';



import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductDetailsProvider extends ChangeNotifier {
  List<GetItemDetailsModel> getPlacesDetailsModel = [];

  Future<void> getZaraDetails({required String url}) async {
    var headers = {
      'Cookie': 'your-cookie-data-here'
    };
    var request = http.Request('GET', Uri.parse(url));

    request.headers.addAll(headers);

    try {
      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        String responseBody = await response.stream.bytesToString();
        var jsonData = json.decode(responseBody);

        getPlacesDetailsModel.clear();

        if (jsonData is List) {
          getPlacesDetailsModel = jsonData
              .map((item) => GetItemDetailsModel.fromJson(item))
              .toList();
        } else if (jsonData is Map<String, dynamic>) {
          getPlacesDetailsModel.add(GetItemDetailsModel.fromJson(jsonData));
        }

        print("Model length  ==================> ${getPlacesDetailsModel.length}");
        print("Model brandGroupCode  ==========> ${getPlacesDetailsModel[0].brand!.brandGroupCode}");
        print("Model name  ====================> ${getPlacesDetailsModel[0].name}");
        print("Model price  ===================> ${getPlacesDetailsModel[0].detail!.colors[0].price}");
        print("Model description  =============> ${getPlacesDetailsModel[0].detail!.colors[0].description}");
        print("Model values  ==================> ${
            getPlacesDetailsModel[0]
            .detail!
            .colors[
              0]
            .sizes[
              0]
            .attributes[
              0]
            .values}");
        print("Data ===========================> $responseBody");

        notifyListeners();
      } else {
        print("Failed to load data: ${response.reasonPhrase}");
      }
    } catch (e) {
      print("Error ===============> $e");
    }
  }
}

















// class ProductDetailsProvider extends ChangeNotifier {
//   List<GetItemDetailsModel> getPlacesDetailsModel = [];
//
//   Future<void> getZaraDetails({required String url}) async {
//     var headers = {
//       'Cookie':
//           'ITXDEVICEID=b8317f2aa097c2ae592c3591dcd63967; ITXSESSIONID=4fc9115704d5a01983572ebf2c340866; _abck=18948336B2B74BE9BA57A397099612E7~-1~YAAQNp4QArZvqaSPAQAALMw1qwt6zXNi1IuLnxXkDDHmx0yuDfZ1pdnhsWB7mNou+swkwL3Qjf1gqVKC8ONdRkAWEttfwKj4GkNE8dBbCbmKdtVhQgF+JNJBuyj6eWxgr4tmQ/oyw1PN4PnMi1uIZLb/kD5njHLF6ThspaN/oYFs92mSOps5+DSDDZiNRlrvtgEOenLzkzoVYn0pKAJOoLJgg7vLIbrvDmE7sLGSeId+SHI+q0Y4papRTRnHT57dRzlyVQWsh8TZ2w6b+2h4EVJveHtfZWCAjFlv14J+iEeteYEgzWqi7lD9uGfU1pCNGgWRsXBcdDyBASDMl4CGX+xiPr3D17maevxfPOoeVe3Wmiz7vD+2PymgWUqVcK+Skv46/2M=~-1~-1~-1; ak_bmsc=284AD4F9F668AE2F6DC2562E5C163A81~000000000000000000000000000000~YAAQNp4QArdvqaSPAQAALMw1qxeMTlE1KbMjHqubeY1IL5gWDh2IRC2pqr5kylKHm1RShGWdz1szXYQh1GXdeM3qkqo0V4ni3m7ysSh3nBnpPBySIDzPeV9jiGO2xBKB5bCq8d8oajxRtSP53bsu/3gnMQIDyk2b55U50VpDZ90REThQPnLUh4FoJle76C0BCcXPPcRL/YTTSKXPIcmN/J3U5K96fHC4XQHZ9/6GScbWEulhy3NowiWzhg571S3b2/WQ6eAcrWS7TQRIdUZBevSEz075IO4ydDFXpsnnuuVudaxOagBBDrhkm/ob8qtHCJeesEZMmH6WjX+roYD5qKuZSWtDhKpphpYmSIG5z2MZLwdjuYWj1kBE2Q==; bm_sv=ED0AAA623EEFD848D5189DE0B4E7C726~YAAQNp4QAoKEqaSPAQAApt06qxccZ80cZRnyXfnyLlslKXuoExmaN6yU6LgH/Cglj8etXoJmS2pXi7ps+3rklsIs/A3Sjg9go5JYtB0+RLH9Aly/g39xpEDdzA9Vx1+P11xOn6h/BVlJtfTBubUiFECWJoxwUpzmZGOFWlhzrLkCmE/+4Whx8mfn3xqNQAOSPGUeL03vPppduCXNH3kNWTHjeWRo8Bg/pjUr/mgyURvMSJ43xppXeghrHoAk2w==~1; bm_sz=D0176A88319C53B14DC5D16F330547CD~YAAQNp4QArhvqaSPAQAALMw1qxd/W2aD0bu5F3MR0tLJbD0hYtzIAGXdxmSddhvp9dj7ht4o5pt+IA0zptUugtIMXlZaboQLfUoRggg2uJahC3i2KuEhO+EXV4D2pZ5YR/21gNPQaS37xHr/pDPSR4euiwj9lQqcqlCZgaOVeXkNat5YAx9jHOkjrmeQIvm6v5nJmSnj7aEBjnbKhtBUC9zqZZmQ6oplqstOxKjTvhCAq3CVEZulTnIbS6MdH7CXRizuEFupUah8fHNiMewxHd5vbBDtZ431JiYOI2Nk8jR4f7oSZaNbZPvRw3gJMzu6n1iBxQ4h3t0W2qx9PEt0ou+56V9+MvRvuqamvA8=~3163189~3486519; TS0122c9b6=011f37387cc26628cac671f35b1027026f7b9c825252ef8a244c41ded65fe2f364467ee4be5b2fe92a3079310fee15aa90eb13b81d'
//     };
//     var request = http.Request('GET', Uri.parse(url));
//
//     request.headers.addAll(headers);
//
//     http.StreamedResponse response = await request.send();
//
//     if (response.statusCode == 200) {
//       String responseBody = await response.stream.bytesToString();
//       var jsonData = json.decode(responseBody);
//
//       if (jsonData is List) {
//         getPlacesDetailsModel.clear();
//         getPlacesDetailsModel = jsonData
//             .map((item) => GetItemDetailsModel.fromJson(item))
//             .toList();
//       } else if (jsonData is Map<String, dynamic>) {
//         getPlacesDetailsModel.clear();
//         getPlacesDetailsModel.add(GetItemDetailsModel.fromJson(jsonData));
//       }
//
//       print("Model length  ==========> ${getPlacesDetailsModel.length}");
//       print("Model brandGroupCode  ==========> ${getPlacesDetailsModel[0].brand!.brandGroupCode.toString()}");
//       print("Model name  ==========> ${getPlacesDetailsModel[0].name.toString()}");
//       print("Model price  ==========> ${getPlacesDetailsModel[0].detail!.colors[0].price}");
//       print("Model description  ==========> ${getPlacesDetailsModel[0].detail!.colors[0].description.toString()}");
//       print("Model values  ==========> ${getPlacesDetailsModel[0].detail!.colors[0].sizes[0].attributes[0].values.toString()}");
//       print("Data ============>>>   ${responseBody}");
//
//       notifyListeners();
//     } else {
//       print("Data ============>>>   ${response.reasonPhrase}");
//     }
//   }
// }
