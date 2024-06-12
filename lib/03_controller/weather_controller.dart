import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:weather_app_webtree/utils/constants/api_url.dart';
import 'package:weather_app_webtree/utils/constants/custom_print.dart';
import 'package:weather_app_webtree/utils/service/hrttp_response.dart';
import 'package:weather_app_webtree/utils/service/http_service.dart';

class WeatherController extends ChangeNotifier {
  APIResponse? wetherApiResponse;

  getWeatherApiFn({String? key}) async {
    wetherApiResponse = APIResponse(data: null, loading: true);
    notifyListeners();
    String key = dotenv.get('KEY');

    final response = await HttpApiService.apiRequest(
        url: "${ApiUrl.weatherApiEndPoint}?key=$key&q=dubai", method: 'get');

    if (response?.statusCode == 200) {
      customLog("${response?.body}");
    } else {}
  }
}
