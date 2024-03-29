import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_raashin/models/countries_model.dart';
import 'package:flutter_raashin/models/products_model.dart';
import 'package:http/http.dart' as http;

Future<List<Products>> fetchAllProducts(http.Client client) async {
  final response = await client.get('https://skytoptrial.000webhostapp.com/functions/Products/allproducts.php');
  // Use the compute function to run parsePhotos in a separate isolate
  return compute(parseData, response.body);
}

// A function that will convert a response body into a List<Products>
List<Products> parseData(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  List<Products> list =
  parsed.map<Products>((json) => new Products.fromJson(json)).toList();
  return list;
}


Future<List<Country>> fetchCountry(http.Client client) async {
  final response = await client.get('http://restcountries.eu/rest/v2/all');
  // Use the compute function to run parsePhotos in a separate isolate
  return compute(parseCountryData, response.body);
}

// A function that will convert a response body into a List<Country>
List<Country> parseCountryData(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  List<Country> list =
  parsed.map<Country>((json) => new Country.fromJson(json)).toList();
  return list;
}