import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

getNewsSpaceX(person) async {
  try {
    print(person.value);
    var url = Uri.parse("https://www.mappz.info/api/v1/spacex/All");

    return http.get(url, headers: {
      "Accept": "application/json",
    }).then((response) {
      var body = jsonDecode(response.body);
      print(body['data']);
      return body['data'];
    }).catchError((onError) {
      print(onError.toString());
      return [];
    });
  } catch (err) {
    print(err.toString());
  }
}

getNewsElonMusk() async {
  try {
    print("something holo");
    var url = Uri.parse("https://www.mappz.info/api/v1/elonmusk/All");

    return http.get(url, headers: {
      "Accept": "application/json",
    }).then((response) {
      var body = jsonDecode(response.body);
      print(body['data']);
      return body['data'];
    }).catchError((onError) {
      print(onError.toString());
      return [];
    });
  } catch (err) {
    print(err.toString());
  }
}

getNewsTesla(person) async {
  try {
    print(person);
    var url = Uri.parse("https://www.mappz.info/api/v1/tesla/All");

    return http.get(url, headers: {
      "Accept": "application/json",
    }).then((response) {
      var body = jsonDecode(response.body);
      print(body['data']);
      return body['data'];
    }).catchError((onError) {
      print(onError.toString());
      return [];
    });
  } catch (err) {
    print(err.toString());
  }
}
