import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sample_project/core/core.dart';

@RoutePage()
class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Recipes Screen"),
      body: Center(
        child: Column(
          children: [
            const Text("List of Recipes"),
            const SizedBox(height: AppSize.spaceMedium),
          ],
        ),
      ),
    );
  }
}
