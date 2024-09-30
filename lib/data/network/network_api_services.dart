import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:vcall_chat/data/app_excaptions.dart';
import 'package:vcall_chat/data/network/base_api_services.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      print(Uri.parse(url));
    }

    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 11));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on TimeoutException {
      throw RequestTimeoutException();
    }
    return responseJson;
  }

  @override
  Future<dynamic> postApi(Map<String, dynamic> data, String url) async {
    if (kDebugMode) {
      print(Uri.parse(url));
      print(data);
    }

    dynamic responseJson;
    try {
      final response = await http
          .post(
            Uri.parse(url),
            headers: {'Content-Type': 'application/json'},
            body: jsonEncode(data),
          )
          .timeout(const Duration(seconds: 11));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on TimeoutException {
      throw RequestTimeoutException();
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return jsonDecode(response.body);
      case 400:
        throw InvalidUrlException();
      case 500:
        throw ServerException();
      default:
        throw FetchDataException('Status code: ${response.statusCode}');
    }
  }
}
