import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_project/core/core.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/presentation/presentation.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final profileBloc = context.read<ProfileBloc>();
    final router = context.router;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      profileBloc.add(FetchUserDetailEvent());
    });
    return Scaffold(
      appBar: const MyAppBar(),
      body: BlocListener<ProfileBloc, ProfileState>(
        listenWhen: (previous, current) =>
            previous.profileStatus != current.profileStatus,
        listener: (context, state) {
          final status = state.profileStatus;

          if (status == ProfileStatus.success) {
            router.replace(const LoginRoute());
          } else if (status == ProfileStatus.failed) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Error fetching......')),
            );
          }
        },
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            final status = state.profileStatus;
            if (status == ProfileStatus.fetching) {
              return Center(child: CircularProgressIndicator.adaptive());
            } else {
              final user = state.userEntity;
              return UserCard(user: user);
            }
          },
        ),
      ),
    );
  }
}
