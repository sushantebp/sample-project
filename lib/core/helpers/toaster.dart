import 'package:flutter/material.dart';
import 'package:sample_project/core/core.dart';
import 'package:toastification/toastification.dart';

class Toaster {
  static final Toastification _toastification = Toastification();

  static void showError({
    required String message,
    Duration duration = const Duration(seconds: 2),
  }) {
    _toastification.show(
      title: const Text(
        'Error',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      description: Text(
        message,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
      backgroundColor: Colors.red,
      autoCloseDuration: duration,
      type: ToastificationType.error,
      showIcon: false,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.paddingMedium,
        vertical: AppSize.paddingSmall,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: AppSize.marginMedium,
        vertical: AppSize.marginSmall,
      ),
      borderRadius: BorderRadius.circular(AppSize.radiusMedium),
      animationDuration: const Duration(milliseconds: 300),
    );
  }

  static void showSuccess({
    required String message,
    Duration duration = const Duration(seconds: 2),
  }) {
    _toastification.show(
      title: const Text(
        'Success',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      description: Text(
        message,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
      backgroundColor: Colors.green,
      autoCloseDuration: duration,
      type: ToastificationType.success,
      showIcon: false,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.paddingMedium,
        vertical: AppSize.paddingSmall,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: AppSize.marginMedium,
        vertical: AppSize.marginSmall,
      ),
      borderRadius: BorderRadius.circular(AppSize.radiusMedium),
      animationDuration: const Duration(milliseconds: 300),
    );
  }

  static void showWarning({
    required String message,
    Duration duration = const Duration(seconds: 2),
  }) {
    _toastification.show(
      title: const Text(
        'Warning',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      description: Text(
        message,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
      backgroundColor: Colors.orange,
      autoCloseDuration: duration,
      type: ToastificationType.warning,
      showIcon: false,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.paddingMedium,
        vertical: AppSize.paddingSmall,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: AppSize.marginMedium,
        vertical: AppSize.marginSmall,
      ),
      borderRadius: BorderRadius.circular(AppSize.radiusMedium),
      animationDuration: const Duration(milliseconds: 300),
    );
  }

  static void showInfo({
    required String message,
    Duration duration = const Duration(seconds: 2),
  }) {
    _toastification.show(
      title: const Text(
        'Info',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      description: Text(
        message,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
      backgroundColor: Colors.blueGrey,
      autoCloseDuration: duration,
      type: ToastificationType.info,
      showIcon: false,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.paddingMedium,
        vertical: AppSize.paddingSmall,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: AppSize.marginMedium,
        vertical: AppSize.marginSmall,
      ),
      borderRadius: BorderRadius.circular(AppSize.radiusMedium),
      animationDuration: const Duration(milliseconds: 300),
    );
  }
}
