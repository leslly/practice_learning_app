import 'package:dio/dio.dart';



class HttpHelper {

  final Dio dio = Dio();
  String baseUrl = "https://fake-valid-cc-data-generator.p.rapidapi.com/";


  Future<Response> get({
    required String url,
    String? token,
    Map<String, dynamic>? queryParams
  }) async{
    dio.options.headers['Authorization'] = 'Bearer $token';
    dio.options.contentType = 'application/json';
    final response = await dio.get(
      baseUrl + url,
      queryParameters: queryParams,
    );
    print(baseUrl + url);
    return response;
  }

}