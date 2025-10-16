import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sample_project/core/core.dart';

@RoutePage()
class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "User Screen"),
      body: Center(
        child: Column(
          children: [
            const Text("List of User"),
            const SizedBox(height: AppSize.spaceMedium),
          ],
        ),
      ),
    );
  }
}
