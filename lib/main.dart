import 'package:flutter/material.dart';
import 'package:sample_project/core/core.dart';

void main() => runApp(const SampleProjectApp());

class SampleProjectApp extends StatelessWidget {
  const SampleProjectApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter();
    return MaterialApp.router(
      title: AppConstant.appName,
      routerConfig: router.config(),
    );
  }
}
