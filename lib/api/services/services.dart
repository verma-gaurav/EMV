import 'dart:convert';

import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:http/http.dart' as http;

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

getTeslaMultimedia() async {
  try {
    var url = Uri.parse("https://www.mappz.info/api/v1/teslamultimedia");

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

getSpaceXMultimedia() async {
  try {
    var url = Uri.parse("https://www.mappz.info/api/v1/spacexmultimedia");

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

postSignUp(user_name, phone, first_name, last_name, password, email,
    cnfpassword) async {
  try {
    print(first_name);
    var url = Uri.parse("https://www.mappz.info/api/v1/auth/signup");
    var body = jsonEncode({
      'email': email,
      'user_name': user_name,
      'phone': phone,
      'first_name': first_name,
      'last_name': last_name,
      'password': password
    });
    print(body);

    return http
        .post(url,
            headers: {
              "Accept": "application/json",
            },
            body: body)
        .then((response) {
      var body = jsonDecode(response.body);
      print(response.statusCode);
      if (response.statusCode != 200) print(response.body);
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
