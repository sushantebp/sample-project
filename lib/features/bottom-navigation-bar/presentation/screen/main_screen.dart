import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sample_project/core/core.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: MyAppBar(title: "Main Screen"));
  }
}
