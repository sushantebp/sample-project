import 'package:auto_route/auto_route.dart';
import 'package:sample_project/features/bottom-navigation-bar/presentation/presentation.dart';
import 'package:sample_project/features/login/presentation/presentation.dart';
import 'package:sample_project/features/splash/presentation/presentation.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(initial: true, page: SplashRoute.page),
    AutoRoute(page: LoginRoute.page),

    AutoRoute(page: MainRoute.page),
  ];
}
