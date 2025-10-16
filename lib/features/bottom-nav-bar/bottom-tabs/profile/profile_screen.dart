import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sample_project/core/core.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Profile Screen"),
      body: Center(
        child: Column(
          children: [
            const Text("List of Profile"),
            const SizedBox(height: AppSize.spaceMedium),
          ],
        ),
      ),
    );
  }
}
