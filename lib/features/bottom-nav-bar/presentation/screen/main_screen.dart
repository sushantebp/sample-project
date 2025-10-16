import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  // List of routes corresponding to each bottom navigation tab.
  final List<PageRouteInfo<Object?>> _routes = const [];

  // List of NavigationDestination widgets representing the icons and labels
  final List<NavigationDestination> _destinations = const [
    NavigationDestination(
      selectedIcon: Icon(Icons.inventory),
      icon: Icon(Icons.inventory_outlined),
      label: 'Product',
    ),
    NavigationDestination(
      selectedIcon: Icon(Icons.shopping_cart),
      icon: Icon(Icons.shopping_cart_outlined),
      label: 'Cart',
    ),
    NavigationDestination(
      selectedIcon: Icon(Icons.menu_book),
      icon: Icon(Icons.menu_book_outlined),
      label: 'Recipes',
    ),
    NavigationDestination(
      selectedIcon: Icon(Icons.person),
      icon: Icon(Icons.person_outline),
      label: 'User',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: _routes,
      bottomNavigationBuilder: (context, tabsRouter) => NavigationBar(
        destinations: _destinations,
        selectedIndex: tabsRouter.activeIndex,
        onDestinationSelected: (index) => tabsRouter.setActiveIndex(index),
      ),
    );
  }
}
