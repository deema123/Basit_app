abstract class SingInState{}

class SingInInitialState extends SingInState{}

class SingInLoadingState extends SingInState{}

class SingInSuccessState extends SingInState{}

class SingInErrorState extends SingInState{
  late final String error;
  SingInErrorState(this.error);
}

/*
import 'package:dio/dio.dart';
import 'package:flutter_application_1/services/shared_pref.dart';

class DioHelper {
  static final Dio dio = Dio(
    BaseOptions(
      //baseUrl: 'https://teknomarketgroup.net/api/',
      baseUrl: 'https://toptan.alberki.com/api/',
      receiveDataWhenStatusError: true,
    ),
  );

  static Future<Response> postData({
    required String url,
    required dynamic data,
    String? token,
  }) async {
    dio.options.headers = {
      'Accept-Language': 'en',
      'Content-Type': 'multipart/form-data',
      'Authorization': MySharedPreference.mySharedPreference.getToken() ,
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
      'Authorization': MySharedPreference.mySharedPreference.getToken(),
    };

    return await dio.get(
      url,
      queryParameters: query,
    );
  }
}
*/