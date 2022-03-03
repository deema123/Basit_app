import 'package:dio/dio.dart';
//import 'package:flutter_application_1/services/shared_pref.dart';

class DioHelper{
  static final Dio dio = Dio(
    BaseOptions(
      //baseUrl: 'https://teknomarketgroup.net/api/',
      baseUrl: 'https://basit.app/api/',
      headers: {'Accept':'application/json'},
      receiveDataWhenStatusError: true,
    ),
  );

  static Future<Response> postData({
    required String url,
    required dynamic data,
    String? token,
    //header بنحط لما نستدعي البوست داتا ميثود
  }) async {
    dio.options.headers = {
      'Accept-Language': 'en',
     // 'Content-Type': 'multipart/form-data',
      'Authorization': token ,
    };

    return await dio.post(
      url,
      data: data,
      options: Options(method: 'POST'),
    );
  }

  static Future<Response> getData({
    required String url,
    dynamic query,
    String? token,
  }) async {
    dio.options.headers = {
      'Accept-Language': 'en',
      'Content-Type': 'application/json',
      'Authorization': token,
    };

    return await dio.get(
      url,
      queryParameters: query,
    );
  }
}