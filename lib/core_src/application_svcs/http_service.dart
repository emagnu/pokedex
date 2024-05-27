//  //  ///
//  Import LIBRARIES
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
//  Import FILES
//  //  ///

class HttpService {
  HttpService();

  final Dio _dio = Dio();

  Future<Response?> get(String path) async {
    try {
      final response = await _dio.get(path);
      return response;
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}  //  End of HttpService()
