import 'package:auto_route/auto_route.dart';
import 'package:sample_project/core/helpers/token_helper.dart';
import 'package:sample_project/core/router/app_router.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final refreshToken = await getRefreshToken();
    if (refreshToken == null || refreshToken.isEmpty) {
      router.push(const LoginRoute());
    } else {
      resolver.next();
    }
  }
}
