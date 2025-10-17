import 'package:flutter/material.dart';
import 'package:sample_project/core/core.dart';
import 'package:toastification/toastification.dart';

class Toaster {
  static final Toastification _toastification = Toastification();

  static void _showToast({
    required String message,
    required String title,
    required Color backgroundColor,
    required ToastificationType type,
    Duration duration = const Duration(seconds: 2),
  }) {
    _toastification.show(
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      description: Text(
        message,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
      backgroundColor: backgroundColor,
      type: type,
      showIcon: false,
      autoCloseDuration: duration,
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

  static void showError(
    String message, {
    Duration duration = const Duration(seconds: 2),
  }) {
    _showToast(
      message: message,
      title: 'Error',
      backgroundColor: Colors.red,
      type: ToastificationType.error,
      duration: duration,
    );
  }

  static void showSuccess(
    String message, {
    Duration duration = const Duration(seconds: 2),
  }) {
    _showToast(
      message: message,
      title: 'Success',
      backgroundColor: Colors.green,
      type: ToastificationType.success,
      duration: duration,
    );
  }

  static void showWarning(
    String message, {
    Duration duration = const Duration(seconds: 2),
  }) {
    _showToast(
      message: message,
      title: 'Warning',
      backgroundColor: Colors.orange,
      type: ToastificationType.warning,
      duration: duration,
    );
  }

  static void showInfo(
    String message, {
    Duration duration = const Duration(seconds: 2),
  }) {
    _showToast(
      message: message,
      title: 'Info',
      backgroundColor: Colors.blueGrey,
      type: ToastificationType.info,
      duration: duration,
    );
  }
}
