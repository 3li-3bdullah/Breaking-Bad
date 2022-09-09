import 'dart:developer';

import 'package:breaking_bad/shared/constants.dart';
import 'package:dio/dio.dart';

class CharactersWebServices {
  late Dio dio;

  CharactersWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 10 * 1000, // 10 seconds
      receiveDataWhenStatusError: true,
      receiveTimeout: 10 * 1000,
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get('characters');
      log(response.data.toString());
      return response.data;
    } catch (e) {
      log(e.toString());
      return []; 
    }
  }
}
