import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sample_project/core/core.dart';

@RoutePage()
class CartsScreen extends StatelessWidget {
  const CartsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Carts Screen"),
      body: Center(
        child: Column(
          children: [
            const Text("List of Carts"),
            const SizedBox(height: AppSize.spaceMedium),
          ],
        ),
      ),
    );
  }
}
