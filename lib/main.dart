import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_project/core/core.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/data/data.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/presentation/presentation.dart';
import 'package:sample_project/features/login/data/repository/login_repository_impl.dart';
import 'package:sample_project/features/login/presentation/bloc/login_bloc.dart';
import 'package:sample_project/features/splash/presentation/presentation.dart';

void main() {
  runApp(const SampleProjectApp());
}

class SampleProjectApp extends StatelessWidget {
  const SampleProjectApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              LoginBloc(loginRepository: LoginRepositoryImpl(NetworkService())),
        ),
        BlocProvider(create: (context) => SplashBloc()),
        BlocProvider(
          create: (context) => ProfileBloc(
            profileRepository: ProfileRepositoryImpl(NetworkService()),
          ),
        ),
      ],
      child: MaterialApp.router(
        title: AppConstant.appName,
        routerConfig: router.config(),
      ),
    );
  }
}
