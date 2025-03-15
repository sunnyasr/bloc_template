import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bloc_course/data/exceptions/app_exceptions.dart';
import 'package:bloc_course/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkServiceApi extends BaseApiServices {
  @override
  Future<dynamic> getApi(url) async {
    dynamic jsonResponse;
    try {
      final response = await http
          .get(Uri.parse(url))
          .timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw NoInternetException();
    } on TimeoutException {
      throw FetchDataException('Time out try again');
    }
    return jsonResponse;
  }

  Future<dynamic> deleteApi(url) async {
    dynamic jsonResponse;
    try {
      final response = await http
          .delete(Uri.parse(url))
          .timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw NoInternetException();
    } on TimeoutException {
      throw FetchDataException('Time out try again');
    }
    return jsonResponse;
  }

  @override
  Future<dynamic> postApi(url, data) async {
    dynamic jsonResponse;
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw NoInternetException();
    } on TimeoutException {
      throw FetchDataException('Time out try again');
    }
    return jsonResponse;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return jsonDecode(response.body);
      case 400:
        return jsonDecode(response.body);
      case 401:
        throw UnauthorizedException();
      case 500:
        throw FetchDataException(
          'Error communicate with server ${response.statusCode} ',
        );
      default:
        FetchDataException('Something went wrong ${response.statusCode} ');
    }
  }
}
