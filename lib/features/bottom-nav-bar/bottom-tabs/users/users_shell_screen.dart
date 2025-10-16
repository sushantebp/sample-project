import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UsersShellScreen extends StatelessWidget {
  const UsersShellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}
