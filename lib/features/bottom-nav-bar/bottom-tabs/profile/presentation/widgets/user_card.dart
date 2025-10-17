import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_project/core/core.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/domain/domain.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/presentation/presentation.dart';

class UserCard extends StatelessWidget {
  final UserEntity user;
  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.spaceLarge),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: AppSize.radiusLarge * 3,
            backgroundColor: context.colorScheme.primary.withOpacity(0.4),
            backgroundImage: NetworkImage(user.image),
            onBackgroundImageError: (_, __) => const Icon(Icons.error),
          ),
          const SizedBox(height: AppSize.spaceMedium),
          Text(
            "${user.firstName} ${user.lastName}",
            style: context.textTheme.displayMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: AppSize.fontExtraLarge,
            ),
          ),
          const SizedBox(height: AppSize.spaceSmall),
          Text(
            user.email,
            style: context.textTheme.labelMedium?.copyWith(
              fontSize: AppSize.fontMedium,
            ),
          ),
          const SizedBox(height: AppSize.spaceMedium),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _InfoChip(label: "Gender", value: user.gender),
              _InfoChip(label: "Age", value: user.age.toString()),
              _InfoChip(label: "Blood", value: user.bloodGroup),
            ],
          ),
          const SizedBox(height: AppSize.spaceMedium),
          CustomButton(
            backgroundColor: Colors.red,
            title: "Logout",
            onPressed: () => context.read<ProfileBloc>().add(LogoutUserEvent()),
          ),
        ],
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final String label;
  final String value;

  const _InfoChip({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: context.colorScheme.primary.withOpacity(0.2),
      label: Text(
        "$label: $value",
        style: const TextStyle(
          fontSize: AppSize.fontSmall,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
