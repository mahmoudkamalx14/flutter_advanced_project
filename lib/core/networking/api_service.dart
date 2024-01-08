import 'package:dio/dio.dart';
import 'package:flutter_advanced_project/core/networking/api_constants.dart';
import 'package:flutter_advanced_project/features/login/data/models/login_request_body.dart';
import 'package:flutter_advanced_project/features/login/data/models/login_respone.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
}
