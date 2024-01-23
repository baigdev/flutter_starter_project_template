import 'package:app_template/features/authentication/presentation/pages/view/auth_view.dart';
import 'package:app_template/utils/extensions/string_extensions.dart';
import 'package:app_template/utils/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../dependency_injection/di_container.dart';
import '../local_storage/local_storage.dart';

class GoRouterNavigationDelegate {
  static final GoRouterNavigationDelegate _singleton =
      GoRouterNavigationDelegate._internal();

  factory GoRouterNavigationDelegate() {
    return _singleton;
  }

  GoRouterNavigationDelegate._internal();

  final localStorage = getItInstance.get<LocalStorage>();
  final parentNavigationKey = GlobalKey<NavigatorState>();
  late final GoRouter router = GoRouter(
    navigatorKey: parentNavigationKey,
    debugLogDiagnostics: true,
    redirect: (ctx, state) async {
      /* token: string representation of boolean: "true" or "false"*/

      // var isAutoLogin = await localStorage.readAutoLoginKey();
      // var isGuestUnAuthUser = await localStorage.readGuestUserKey();
      //
      // final loggingIn = state.matchedLocation == NavigationRouteNames.authRoute;
      //
      // if (isAutoLogin == "false") {
      //   return loggingIn
      //       ? null
      //       : isGuestUnAuthUser == "true"
      //           ? null
      //           : NavigationRouteNames.authRoute;
      // }
      //
      // if (loggingIn) {
      //   return NavigationRouteNames
      //       .jobSearchRoute; //goto home page (Right now just passed auth page.)
      // }
      //
      return null;
    },
    initialLocation: NavigationRouteNames.authRoute,
    routes: [
      GoRoute(
        path: NavigationRouteNames.authRoute,
        name: NavigationRouteNames.authRoute.convertRoutePathToRouteName,
        builder: (BuildContext ctx, GoRouterState state) =>
            const AuthenticationView(),
      ),
    ],
  );
}
