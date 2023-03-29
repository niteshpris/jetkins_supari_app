
import 'package:dio/dio.dart';
import 'package:suparibazar_flutter/repository/model/data.dart';
import 'package:suparibazar_flutter/repository/retrofit/apis.dart';
import 'package:retrofit/http.dart';
part 'api_client.g.dart';


@RestApi(baseUrl: Apis.BASEURL)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST(Apis.login)
  @FormUrlEncoded()
  Future<ResponseData> login(@Body() Map<String, dynamic> map);
}
