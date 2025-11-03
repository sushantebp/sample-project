import 'package:dio/dio.dart';
import 'package:sample_project/core/core.dart';

class DioClient {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: AppConstant.baseUrl,
      headers: {"Content-Type": "application/json"},
    ),
  );

  DioClient._internal();

  static final DioClient _instance = DioClient._internal();

  factory DioClient() => _instance;

  Dio get dio => _dio;
}
