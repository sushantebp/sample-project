import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_project/core/core.dart';

enum ThemeModeOption { light, dark, system }

class SelectAppThemeMode extends StatelessWidget {
  const SelectAppThemeMode({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<AppThemeModeCubit>();
    final themeState = context.watch<AppThemeModeCubit>().state;

    return PopupMenuButton<ThemeModeOption>(
      icon: Icon(
        themeState == ThemeMode.light
            ? Icons.light_mode
            : themeState == ThemeMode.dark
            ? Icons.dark_mode
            : Icons.computer,
      ),
      onSelected: (value) {
        switch (value) {
          case ThemeModeOption.light:
            themeCubit.setTheme(ThemeMode.light);
            break;
          case ThemeModeOption.dark:
            themeCubit.setTheme(ThemeMode.dark);
            break;
          case ThemeModeOption.system:
            themeCubit.setTheme(ThemeMode.system);
            break;
        }
      },
      itemBuilder: (_) => [
        PopupMenuItem(
          value: ThemeModeOption.light,
          child: Row(
            children: const [
              Icon(Icons.light_mode, color: Colors.orange),
              SizedBox(width: AppSize.radiusLarge),
              Text('Light'),
            ],
          ),
        ),
        PopupMenuItem(
          value: ThemeModeOption.dark,
          child: Row(
            children: const [
              Icon(Icons.dark_mode, color: Colors.grey),
              SizedBox(width: AppSize.radiusLarge),
              Text('Dark'),
            ],
          ),
        ),
        PopupMenuItem(
          value: ThemeModeOption.system,
          child: Row(
            children: const [
              Icon(Icons.settings, color: Colors.blueGrey),
              SizedBox(width: AppSize.radiusLarge),
              Text('System'),
            ],
          ),
        ),
      ],
    );
  }
}
