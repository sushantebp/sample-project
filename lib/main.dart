import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_project/core/core.dart';
import 'package:sample_project/features/login/data/repository/login_repository_impl.dart';
import 'package:sample_project/features/login/presentation/bloc/login_bloc.dart';
import 'package:sample_project/features/splash/presentation/bloc/splash_bloc_observer.dart';
import 'package:sample_project/features/splash/presentation/presentation.dart';

void main() {
  Bloc.observer = SplashBlocObserver();
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
      ],
      child: MaterialApp.router(
        title: AppConstant.appName,
        routerConfig: router.config(),
      ),
    );
  }
}
