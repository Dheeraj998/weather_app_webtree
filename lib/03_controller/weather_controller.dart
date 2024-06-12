import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:weather_app_webtree/01_model/weather_model.dart';
import 'package:weather_app_webtree/utils/constants/api_url.dart';
import 'package:weather_app_webtree/utils/constants/custom_print.dart';
import 'package:weather_app_webtree/utils/service/hrttp_response.dart';
import 'package:weather_app_webtree/utils/service/http_service.dart';

class WeatherController extends ChangeNotifier {
  APIResponse? wetherApiResponse;

  WeatherModel? weatherModel;
  Future<APIResponse?> getWeatherApiFn({String? query}) async {
    wetherApiResponse = APIResponse(data: null, loading: true);
    notifyListeners();
    String key = dotenv.get('KEY');

    try {
      final response = await HttpApiService.apiRequest(
          url: "${ApiUrl.weatherApiEndPoint}?key=$key&q=$query", method: 'get');
      customLog("${response?.body}");

      if (response?.statusCode == 200) {
        weatherModel = WeatherModel.fromJson(jsonDecode(response!.body));
        wetherApiResponse = wetherApiResponse?.copyWith(
            // message: jsonDecode(response!.body)['message'],
            loading: false,
            status: APIstatus.onSuccess);
      } else {
        wetherApiResponse = wetherApiResponse?.copyWith(
            // message: jsonDecode(response!.body)['message'],
            loading: false,
            status: APIstatus.onError);
      }
    } on SocketException {
      wetherApiResponse = wetherApiResponse?.copyWith(
          message: 'Internet not available',
          loading: false,
          status: APIstatus.onError);
    } catch (e) {
      customLog("-----$e");
      wetherApiResponse = wetherApiResponse?.copyWith(
          message: 'Something went wrong',
          loading: false,
          status: APIstatus.onError);
    }

    notifyListeners();
    return wetherApiResponse;
  }
}
