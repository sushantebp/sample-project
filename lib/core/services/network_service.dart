import 'package:dio/dio.dart';
import 'package:sample_project/core/core.dart';
import 'package:sample_project/features/login/data/data.dart';
import 'package:sample_project/features/login/data/models/mapping/token_entity_mapping.dart';

class NetworkService {
  NetworkService._() {
    dio.interceptors.add(_interceptorsWrapper());
  }

  static final NetworkService _instance = NetworkService._();
  factory NetworkService() => _instance;

  final dio = Dio(
    BaseOptions(
      baseUrl: AppConstant.baseUrl,
      headers: {"Content-Type": "application/json"},
    ),
  );

  InterceptorsWrapper _interceptorsWrapper() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        try {
          final accessToken = await getAccessToken();
          if (accessToken != null && accessToken.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $accessToken';
          }
        } on DioException catch (error) {
          final dioException = DioAppException.fromDioError(error);
          handler.reject(dioException.dioError);
        } catch (error) {
          handler.reject(DioException(requestOptions: options, error: error));
        }
        handler.next(options);
      },
      onResponse: (response, handler) => handler.next(response),
      onError: (DioException error, handler) async {
        final dioException = DioAppException.fromDioError(error);
        final statusCode = dioException.statusCode;

        if (statusCode == 401) {
          // Handle token refresh
          final refreshed = await _refreshToken();
          if (refreshed) {
            final options = error.requestOptions;
            final newToken = await getAccessToken();

            if (newToken != null) {
              options.headers['Authorization'] = 'Bearer $newToken';
            }

            // Make the request again with new token
            try {
              final response = await dio.fetch(options);
              return handler.resolve(response);
            } catch (e) {
              return handler.reject(dioException.dioError);
            }
          } else {
            return handler.reject(dioException.dioError);
          }
        } else if (statusCode == 403) {
          // Forbidden, handle accordingly (e.g., show alert)
          return handler.reject(dioException.dioError);
        } else {
          return handler.reject(dioException.dioError);
        }
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
        final tokenEntity = tokenModel.toEntity();

        await setAccessToken(tokenEntity.accessToken);
        await setRefreshToken(tokenEntity.refreshToken);

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
