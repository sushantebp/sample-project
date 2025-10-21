import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_project/core/core.dart';
import 'package:toastification/toastification.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/presentation/presentation.dart';
import 'package:sample_project/features/login/presentation/bloc/login_bloc.dart';
import 'package:sample_project/features/splash/presentation/presentation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
      ],
      child: ToastificationWrapper(
        child: MaterialApp.router(
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          title: AppConstant.appName,
          routerConfig: AppRouter.instance.config(),
        ),
      ),
    );
  }
}
