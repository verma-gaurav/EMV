import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

getNewsSpaceX() async {
  try {
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

getNewsTesla() async {
  try {
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

getTeslaForum() async {
  try {
    var url = Uri.parse("https://www.mappz.info/api/v1/teslaforum/");

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

getElonMuskForum() async {
  try {
    var url = Uri.parse("https://www.mappz.info/api/v1/elonmuskforum/");

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

getSpaceXForum() async {
  try {
    var url = Uri.parse("https://www.mappz.info/api/v1/spacexforum/");

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
