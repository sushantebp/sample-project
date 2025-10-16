import 'package:sample_project/core/core.dart';

Future<String?> getAccessToken() async =>
    await SecureStorageService().read(AppConstant.accessTokenKey);

Future<void> setAccessToken(String value) async =>
    await SecureStorageService().write(AppConstant.accessTokenKey, value);

Future<void> deleteAccessToken() async =>
    await SecureStorageService().delete(AppConstant.accessTokenKey);

Future<String?> getRefreshToken() async =>
    await SecureStorageService().read(AppConstant.refreshTokenKey);

Future<void> setRefreshToken(String value) async =>
    await SecureStorageService().write(AppConstant.refreshTokenKey, value);

Future<void> deleteRefreshToken() async =>
    await SecureStorageService().delete(AppConstant.refreshTokenKey);
