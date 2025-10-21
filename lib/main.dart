import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'package:sample_project/core/core.dart';
import 'package:toastification/toastification.dart';
import 'package:sample_project/features/splash/presentation/presentation.dart';
import 'package:sample_project/features/login/presentation/bloc/login_bloc.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/presentation/presentation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferencesService.instance.init();
  final stoage = await getApplicationDocumentsDirectory();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(stoage.path),
  );
  await configureDependencies();
  runApp(const SampleProjectApp());
}

class SampleProjectApp extends StatelessWidget {
  const SampleProjectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<SplashBloc>()),
        BlocProvider(create: (_) => sl<ProfileBloc>()),
        BlocProvider(create: (_) => sl<LoginBloc>()),
        BlocProvider(create: (_) => sl<AppThemeModeCubit>()),
      ],
      child: ToastificationWrapper(
        child: BlocBuilder<AppThemeModeCubit, ThemeMode>(
          builder: (context, themeMode) {
            return MaterialApp.router(
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: themeMode,
              title: AppConstant.appName,
              routerConfig: AppRouter.instance.config(),
            );
          },
        ),
      ),
    );
  }
}
