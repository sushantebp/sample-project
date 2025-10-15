import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_project/core/core.dart';
import 'package:sample_project/features/splash/presentation/presentation.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SplashBloc>().add(const CheckUserAuthEvent());
    });
    return Scaffold(
      body: BlocListener<SplashBloc, SplashState>(
        listenWhen: (previous, current) =>
            previous.splashStatus != current.splashStatus,
        listener: (context, state) {
          WidgetsBinding.instance.addPostFrameCallback((_) async {
            await Future.delayed(const Duration(milliseconds: 3223));
            if (!context.mounted) return;

            if (state.splashStatus == SplashStatus.authenticated) {
              context.router.replace(const MainRoute());
            } else if (state.splashStatus == SplashStatus.unauthenticated) {
              context.router.replace(const LoginRoute());
            }
          });
        },
        child: const SplashContent(),
      ),
    );
  }
}
