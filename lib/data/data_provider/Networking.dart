import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:octopus_test/data/model/api_response.dart';

const BASE_URL = 'http://api.nytimes.com/svc/';

const API_KEY = "";

class DataLoader {

  static const String mostPopularsUrl = 'mostpopular/v2/mostviewed/all-sections/7.json?api-key=$API_KEY';

  Dio client = Dio();
  var options = BaseOptions(
    baseUrl: BASE_URL,
    connectTimeout: 10000,
  );

  Future<ApiResponse> getRequest({
    required String url,
  }) async {
    client.options = options;
    url = BASE_URL + url ;
    print('url: $url');

    try {
      final response = await client.get(url);
      if (response.statusCode == 200) {
        dynamic result = ApiResponse.fromJson(response.data);
        return result;
      } else {
        print(response.data);
        return ApiResponse(
            code: response.statusCode.toString(),
            message: response.statusMessage!,
            data: null);
      }
      print('${response.statusCode} : ${response.data.toString()}');
    } on DioError catch (e) {
      print(e.response!.data);
      print(e.response!.headers);
      print(e.response!.requestOptions);
      if (e.type == DioErrorType.connectTimeout) {
        return ApiResponse(
            code: "-1100", message: "Connection time out", data: null);
      }
      return ApiResponse(
          code: "-1100", message: e.message, data: null);

    } on SocketException catch (e) {
      return ApiResponse(
          code: "-1000", message: 'Connection Error', data: null);
    } on TimeoutException catch (e) {
      return ApiResponse(
          code: "-1100", message: "Connection time out", data: null);
    } on Exception catch (e) {
      print("[GET_REQUEST]: ${e.toString()}");
      return ApiResponse(code: "-999", message: e.toString(), data: null);
    }
  }
}


