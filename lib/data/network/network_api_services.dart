import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:mvvm_architucture/data/app_exception.dart';
import 'package:mvvm_architucture/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on TimeoutException {
      throw RequestTimeOut('');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        double responseJson = jsonDecode(response.body);
        return responseJson;

      case 400:
        throw InvalidUrlException;
      default:
        throw FetchDataException(
            'Error occurred while communication with server${response.statusCode.toString()}');
    }
  }

  @override
  Future postApi(String url) {
    throw UnimplementedError();
  }
}
