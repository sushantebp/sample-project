import 'package:auto_route/auto_route.dart';
import 'package:sample_project/features/login/presentation/presentation.dart';
import 'package:sample_project/features/splash/screen/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page),
    AutoRoute(initial: true, page: LoginRoute.page),
  ];
}
