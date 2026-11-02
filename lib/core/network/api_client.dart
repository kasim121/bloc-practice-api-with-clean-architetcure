import 'package:blocprac/core/constant/api_constant.dart';
import 'package:dio/dio.dart';

/// SRP: generic HTTP transport only.
///
/// This class must NOT know about posts, users, or JSON mapping.
/// Feature code (datasource) decides the path and how to parse the body.
class ApiClient {
  final Dio dio;

  ApiClient._() : dio = Dio(BaseOptions(baseUrl: ApiConstant.baseUrl));

  static final ApiClient instance = ApiClient._();

  Future<Response> get(String path) {
    return dio.get(path);
  }
}
