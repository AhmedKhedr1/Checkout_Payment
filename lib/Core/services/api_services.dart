import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio = Dio();
  Future<Response> post(
      {required body,
      required String url,
       String? token,
      Map<String, String>? headers,
      String? contenttype}) async {
    var response = await dio.post(url,
        data: body,
        options: Options(
            contentType: contenttype,
            headers: headers ??
                {
                  'Authorization': 'Bearer $token',
                }));
    return response;
  }
}
