import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sample_project/core/core.dart';
import 'package:sample_project/core/helpers/toaster.dart';
import 'package:sample_project/features/login/presentation/presentation.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginBloc = context.read<LoginBloc>();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: const MyAppBar(),
      body: BlocConsumer<LoginBloc, LoginState>(
        listenWhen: (previous, current) =>
            previous.loginStatus != current.loginStatus,
        listener: (context, state) {
          if (state.loginStatus == LoginStatus.failed) {
            final message =
                state.errorMessage ?? "Login failed! Try again later.";
            Toaster.showError(message);
          } else if (state.loginStatus == LoginStatus.submitted) {
            Toaster.showSuccess("Login Successful");
            context.router.replace(const MainRoute());
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(AppSize.paddingMedium),
            child: Form(
              key: formKey,
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
                    initialValue: loginBloc.state.username,
                    prefix: const Icon(Icons.person_outline),
                    placeholder: "Enter your username",
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return "Username is required";
                      }
                      return null;
                    },
                    onChanged: (value) =>
                        loginBloc.add(UserNameChangedEvent(value)),
                  ),
                  const SizedBox(height: AppSize.spaceMedium),
                  CustomTextField(
                    prefix: const Icon(Icons.lock_outline),
                    placeholder: "Enter your password",
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return 'Password is required';
                      }
                      return null;
                    },
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
                      isLoading: state.loginStatus == LoginStatus.loading,
                      onPressed: state.loginStatus == LoginStatus.loading
                          ? null
                          : () {
                              if (formKey.currentState?.validate() ?? false) {
                                loginBloc.add(LoginSubmittedEvent());
                              }
                            },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
