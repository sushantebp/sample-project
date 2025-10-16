import 'package:auto_route/auto_route.dart';
import 'package:sample_project/core/router/app_route_path.dart';
import 'package:sample_project/features/bottom-nav-bar/presentation/presentation.dart';
import 'package:sample_project/features/login/presentation/presentation.dart';
import 'package:sample_project/features/splash/presentation/presentation.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(initial: true, path: AppRoutePath.splash, page: SplashRoute.page),
    AutoRoute(path: AppRoutePath.login, page: LoginRoute.page),

    // main screen with bottom navigation tabs
    AutoRoute(
      path: AppRoutePath.main,
      page: MainRoute.page,
      children: [
        AutoRoute(
          path: AppRoutePath.product,
          page: ProductsShellRoute.page,
          children: [AutoRoute(initial: true, page: ProductRoute.page)],
        ),
        AutoRoute(
          path: AppRoutePath.carts,
          page: CartsShellRoute.page,
          children: [AutoRoute(initial: true, page: CartsRoute.page)],
        ),
        AutoRoute(
          path: AppRoutePath.recipes,
          page: RecipesShellRoute.page,
          children: [AutoRoute(initial: true, page: RecipesRoute.page)],
        ),
        AutoRoute(
          path: AppRoutePath.profile,
          page: ProfileShellRoute.page,
          children: [AutoRoute(initial: true, page: ProfileRoute.page)],
        ),
      ],
    ),
  ];
}
