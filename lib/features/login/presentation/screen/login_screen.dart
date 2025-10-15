import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sample_project/core/core.dart';
import 'package:sample_project/features/login/presentation/presentation.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginBloc = context.read<LoginBloc>();

    return Scaffold(
      appBar: const MyAppBar(),
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.loginStatus == LoginStatus.failed) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Login failed. Please try again.')),
            );
          } else if (state.loginStatus == LoginStatus.submitted) {
            context.router.replace(const SplashRoute());
          }
        },
        builder: (context, state) {
          final status = state.loginStatus;
          if (status == LoginStatus.loading) {
            return const Center(child: CircularProgressIndicator.adaptive());
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(AppSize.paddingMedium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSize.spaceLarge),
                Text("Login Here", style: context.textTheme.displaySmall),
                const SizedBox(height: AppSize.spaceSmall),
                Text(
                  "Welcome back! You've been missed.",
                  style: context.textTheme.titleMedium,
                ),
                const SizedBox(height: AppSize.spaceLarge * 1.5),
                CustomTextField(
                  prefix: const Icon(Icons.person_outline),
                  placeholder: "Enter your username",
                  onChanged: (value) =>
                      loginBloc.add(UserNameChangedEvent(value)),
                ),
                const SizedBox(height: AppSize.spaceMedium),
                CustomTextField(
                  prefix: const Icon(Icons.lock_outline),
                  placeholder: "Enter your password",
                  isPassword: true,
                  onChanged: (value) =>
                      loginBloc.add(PasswordChangedEvent(value)),
                ),
                const SizedBox(height: AppSize.spaceLarge * 1.5),
                SizedBox(
                  width: double.infinity,
                  height: AppSize.spaceLarge * 2.2,
                  child: CustomButton(
                    title: "Login",
                    onPressed: () => loginBloc.add(const LoginSubmittedEvent()),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
