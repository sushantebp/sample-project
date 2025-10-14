import 'package:dio/dio.dart';
import 'package:sample_project/core/core.dart';
import 'package:sample_project/core/helpers/token_helper.dart';
import 'package:sample_project/features/login/data/models/token_model.dart';

class NetworkService {
  NetworkService._() {
    dio.interceptors.add(_authInterceptor());
  }

  static final NetworkService _instance = NetworkService._();
  factory NetworkService() => _instance;

  final dio = Dio(
    BaseOptions(
      baseUrl: AppConstant.baseUrl,
      headers: {"Content-Type": "application/json"},
    ),
  );

  InterceptorsWrapper _authInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        try {
          final token = await getAccessToken();
          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }
        } catch (e) {
          throw AccessTokenException(e.toString());
        }
        handler.next(options);
      },
      onResponse: (response, handler) {
        handler.next(response);
      },
      onError: (DioException error, handler) async {
        // Check for 401 Unauthorized error
        if (error.response?.statusCode == 401) {
          // Try refreshing the token
          final refreshed = await _refreshToken();
          if (refreshed) {
            // Retry the failed request with new access token
            final requestOptions = error.requestOptions;
            final newToken = await getAccessToken();
            if (newToken != null) {
              requestOptions.headers['Authorization'] = 'Bearer $newToken';
            }
            try {
              final response = await dio.fetch(requestOptions);
              return handler.resolve(response);
            } catch (e) {
              return handler.reject(error);
            }
          }
        }
        handler.next(error);
      },
    );
  }

  Future<bool> _refreshToken() async {
    try {
      final refreshToken = await getRefreshToken();
      if (refreshToken == null || refreshToken.isEmpty) return false;

      final response = await dio.post(
        ApiEndPoint.refresh,
        data: {'refreshToken': refreshToken},
      );

      if (response.statusCode == 200) {
        final data = response.data;
        final tokenModel = TokenModel.fromJson(data);

        await setAccessToken(tokenModel.accessToken);
        await setRefreshToken(tokenModel.refreshToken);

        return true;
      } else {
        await deleteAccessToken();
        await deleteRefreshToken();
        return false;
      }
    } catch (e) {
      await deleteAccessToken();
      await deleteRefreshToken();
      return false;
    }
  }
}
