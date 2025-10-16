import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_project/core/core.dart';
import 'package:sample_project/features/splash/presentation/presentation.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        return SafeArea(
          child: SizedBox(
            width: context.screenWidth,
            height: context.screenHeight,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  AppImage.logo,
                  width: context.screenWidth * 0.6,
                  height: context.screenHeight * 0.4,
                  fit: BoxFit.contain,
                ),
                const Positioned(
                  bottom: AppSize.spaceLarge,
                  child: CircularProgressIndicator.adaptive(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
