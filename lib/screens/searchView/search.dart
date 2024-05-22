import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:developer' as developer;


import 'item.dart';

class Search{
  String? searchInput;

  // params are search parameters set by the user to narrow down results
  List sectionParam = [];
  RangeValues priceRangeParam = const RangeValues(0,0);
  List colorsParam = [];
  List sizesParam = [];

  // facets tell you what grouping of items there are in the the results of a search
  Map colorFacet = {};    // lists the different colors among the items of a search result e.g. yellow, blue, red
  Map sizeFacet = {};

  // stores the high price and lowest price amongst the results
  RangeValues resultsPriceRange = const RangeValues(0,0);

  Search();

  // gets all items matching the search input and search parameters
  Future <List> getItems() async{
    if (searchInput == null){return [];}
    List items = [];
    final zaraUrl = generateZaraRequest();
    developer.log("Zara API request: $zaraUrl");
    final primarkUrl = generatePrimarkRequest();

    // Creating Clients
    final client = http.Client();         // Creating Clients

    // Zara
    try {
      dynamic response = await client.get(zaraUrl);
      if (response.statusCode != 200){throw APICallException(url: zaraUrl, store: "Zara", statusCode: response.statusCode,);}
      else{
        response = json.decode(response.body);
        items.addAll(response['results'].map((itemInfo) => Item.zara(itemInfo['content'])).toList());

        for (Map facet in response['facets']){
          if (facet["key"] == 'color_facet'){colorFacet = {for (Map color in facet['values']) color['id']: color['value']};}
          if (facet["key"] == 'sizes_facet'){sizeFacet = {for (Map size in facet['values']) size['id']: size['value']};}
          if (facet["key"] == 'price_range_facet'){
            // getting the range of prices from the price facet
            List priceFacet = facet["values"];
            double min = roundDownToNearest10(double.parse(priceFacet[0]['value'])/100);
            double max = roundUpToNearest10(double.parse(priceFacet[priceFacet.length-1]['value'])/100);
            resultsPriceRange = RangeValues(min, max);
            priceRangeParam = RangeValues(min, max);
          }
        }
        print("This is parent ID =======> ${response}");
      }
    } on APICallException{return [];}


    /* Primark */
    try {
      final response = await client.get(primarkUrl);
      if (response.statusCode != 200){throw APICallException(url: primarkUrl, store: "Primark", statusCode: response.statusCode,);} 
      else{
        items.addAll(json.decode(response.body)['data']['bloomreachSearchByKeyword']['response']['docs'].map((itemInfo) => Item.primark(itemInfo)).toList());
      }
    } on APICallException{return [];} finally {client.close();}
    
    client.close();
    return items;
  }
    

  // Zara API calls
  // Uses the classes search parameters to generate a Zara API call
  Uri generateZaraRequest(){
    String req = '''
    https://www.zara.com/itxrest/1/search/store/10706/query?query=$searchInput
    &deviceType=desktop&deviceOS=Android&deviceOSVersion=6.0&catalogue=24054&warehouse=19551&scope=default&origin=default&session=
    &locale=en_GB
    &limit=36
    &offset=0
    &ajax=true
    ''';

    if (sectionParam.isNotEmpty){req += '&section=${sectionParam[0]}&filter=searchSection%3A${sectionParam[0]}';}
    if (sizesParam.isNotEmpty){for(String size in sizesParam){req += '&filter=sizes_facet%3A$size';}}
    if (colorsParam.isNotEmpty){for(String color in colorsParam){req += '&filter=color_facet%3A$color';}}
    if (priceRangeParam != const RangeValues(0,0)){req += '&filter=priceFilter%3A${priceRangeParam.start.toInt() * 100}-${priceRangeParam.end.toInt() * 100}';}

    return Uri.parse(req.replaceAll(RegExp(' '), '').replaceAll(RegExp('\n'), ''));
  }


  // Primark API calls
  // Uses the classes search parameters to generate a Zara API call
  Uri generatePrimarkRequest(){
    String req = '''https://api001-arh.primark.com/bff-002?operationName=BloomreachSearchByKeyword&variables=
    %7B%22q%22%3A%22$searchInput
    %22%2C%22efq%22%3Anull
    %2C%22start
    %22%3A0%2C%22rows
    %22%3A24%2C%22locale%22%3A%22en-gb
    %22%2C%22fq%22%3A%5B%5D%2C%22sort
    %22%3A%22%22%7D&extensions=%7B%22persistedQuery%22%3A%7B%22version%22%3A1%2C%22
    sha256Hash%22%3A%222652d4747ca5dfd6273da3f8432dcf0cc9e2c404984a11d730604aef43e7d14a%22%7D%7D''';

    return Uri.parse(req.replaceAll(RegExp(' '), '').replaceAll(RegExp('\n'), ''));
  }


  double roundUpToNearest10(double number){return (number/10).ceil().toDouble() * 10 ;}
  double roundDownToNearest10(double number){return (number/10).floor().toDouble() * 10 ;}

  @override
  String toString(){
    return ' Search Input: $searchInput\n Section: $sectionParam\n Price Range: $priceRangeParam\n Colour: $colorsParam\n S izes: $sizesParam\n';
  }
}



class APICallException implements Exception {
  final Uri url;
  final String store;
  final int? statusCode;

  APICallException({required this.url, required this.store, this.statusCode});
}
