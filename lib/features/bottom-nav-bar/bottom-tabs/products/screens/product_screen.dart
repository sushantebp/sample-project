import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sample_project/core/core.dart';

@RoutePage()
class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Product Screen"),
      body: Center(
        child: Column(
          children: [
            const Text("List of Product"),
            const SizedBox(height: AppSize.spaceMedium),
          ],
        ),
      ),
    );
  }
}
