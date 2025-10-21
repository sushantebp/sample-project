import 'package:get_it/get_it.dart';

import 'package:sample_project/core/core.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/presentation/presentation.dart';
import 'package:sample_project/features/login/data/data.dart';
import 'package:sample_project/features/login/presentation/presentation.dart';
import 'package:sample_project/features/splash/presentation/presentation.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/data/data.dart';

final GetIt sl = GetIt.instance;

Future<void> configureDependencies() async {
  // ---------- Services ----------
  sl.registerLazySingleton<NetworkService>(() => NetworkService());
  sl.registerLazySingleton<SecureStorageService>(() => SecureStorageService());

  // ---------- Repositories ----------
  sl.registerLazySingleton<LoginRepositoryImpl>(
    () => LoginRepositoryImpl(sl<NetworkService>()),
  );
  sl.registerLazySingleton<ProfileRepositoryImpl>(
    () => ProfileRepositoryImpl(sl<NetworkService>()),
  );

  // ---------- State Management / Blocs ----------
  sl.registerFactory(() => SplashBloc());
  sl.registerFactory(
    () => LoginBloc(loginRepository: sl<LoginRepositoryImpl>()),
  );
  sl.registerFactory(
    () => ProfileBloc(profileRepository: sl<ProfileRepositoryImpl>()),
  );
  sl.registerFactory(() => AppThemeModeCubit());
}
