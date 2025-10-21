import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sample_project/core/core.dart';


class AppThemeModeCubit extends Cubit<ThemeMode> {
  AppThemeModeCubit() : super(ThemeMode.system) {
    _loadTheme();
  }

  // load theme
  Future<void> _loadTheme() async {
    final theme = PreferencesService.instance.getTheme();
    if (theme == AppConstant.lightMode) {
      emit(ThemeMode.light);
    } else if (theme == AppConstant.darkMode) {
      emit(ThemeMode.dark);
    } else {
      emit(ThemeMode.system);
    }
  }

  // set theme
  Future<void> setTheme(ThemeMode mode) async {
    emit(mode);
    if (mode == ThemeMode.light) {
      await PreferencesService.instance.setTheme(AppConstant.lightMode);
    } else if (mode == ThemeMode.dark) {
      await PreferencesService.instance.setTheme(AppConstant.darkMode);
    } else {
      await PreferencesService.instance.setTheme(AppConstant.systemMode);
    }
  }
}
