import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_project/core/core.dart';
import 'package:sample_project/features/login/data/repository/login_repository_impl.dart';
import 'package:sample_project/features/login/presentation/bloc/login_bloc.dart';

void main() => runApp(const SampleProjectApp());

class SampleProjectApp extends StatelessWidget {
  const SampleProjectApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              LoginBloc(loginRepository: LoginRepositoryImpl(NetworkService())),
        ),
      ],
      child: MaterialApp.router(
        title: AppConstant.appName,
        routerConfig: router.config(),
      ),
    );
  }
}
