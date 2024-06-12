import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app_webtree/utils/constants/api_url.dart';
import 'package:weather_app_webtree/utils/constants/custom_print.dart';

class HttpApiService {
  static Future<http.Response?> apiRequest({
    required String url,
    required String method,
    String? otherApiUrl,
    Map<dynamic, dynamic>? body,
    Object? bodyy,
    bool withToken = false,
    bool? isSocketErrorPrint,
  }) async {
    customPrint("api called ${ApiUrl.baseUrl}/$url");
    // String? accessToken =
    //     await SecureStorageService().getCachedData(key: 'token');
    customLog("body $bodyy");
    final headerWithout = {'Content-Type': 'application/json'};
    final headers = {
      'Authorization': 'Bearer ',
      'Content-Type': 'application/json',
    };
    // customLog("----------   Token $accessToken %%%%%%%%%%%%%%%%%%%");
    http.Response? response;
    // customLog("********* $accessToken");
    // try {
    String apiUrl = otherApiUrl ?? '${ApiUrl.baseUrl}/$url';

    switch (method) {
      case 'get':
        response = await http
            .get(
                Uri.parse(
                  apiUrl,
                ),
                headers: withToken ? headers : headerWithout)
            .timeout(const Duration(seconds: 10));
        break;

      case 'post':
        response = await http
            .post(Uri.parse(apiUrl),
                headers: withToken ? headers : headerWithout,
                body: bodyy ?? jsonEncode(body))
            .timeout(const Duration(seconds: 20));
        break;
      case 'put':
        response = await http
            .put(Uri.parse(apiUrl),
                headers: withToken ? headers : headerWithout,
                body: bodyy ?? (body != null ? jsonEncode(body) : null))
            .timeout(const Duration(seconds: 10));
        break;

      case 'patch':
        response = await http
            .patch(Uri.parse(apiUrl),
                headers: withToken ? headers : headerWithout,
                body: jsonEncode(body))
            .timeout(const Duration(seconds: 10));
        break;

      case 'delete':
        response = await http
            .delete(
              Uri.parse(apiUrl),
              body: body == null ? null : jsonEncode(body),
              headers: withToken ? headers : headerWithout,
            )
            .timeout(const Duration(seconds: 10));
        break;
      default:
    }

    if (response?.statusCode == 200) {
      customPrint(apiUrl);
      return response;
    } else if (response?.statusCode == 401 || response?.statusCode == 403) {
      // await CacheHelper().clearSingleData(key: 'token');
      // await CacheHelper().clearSingleData(key: 'userId');
      // navigatorKey.currentState?.pushAndRemoveUntil(
      //     MaterialPageRoute(builder: (context) => const LoginSCreen()),
      //     (route) => false);
      return response;
    } else {
      customLog('error status code is --${response?.statusCode}');
      customLog(response?.body ?? '');
      return response;
    }
    // } on SocketException {
    //   customLog("---no internet");
    //   return response;
    // } catch (e) {
    //   customLog('catch$e');
    //   return response;
    // }
  }
}
