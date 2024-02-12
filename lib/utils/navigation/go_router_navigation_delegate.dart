import 'package:app_template/features/authentication/presentation/pages/view/auth_view.dart';
import 'package:app_template/features/dashboard/presentation/pages/view/dashboard_view.dart';
import 'package:app_template/features/home/presentation/pages/view/home_view.dart';
import 'package:app_template/features/users/presentation/pages/add_user_view.dart';
import 'package:app_template/features/users/presentation/pages/users_view.dart';
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
  final _nestedNavigation1Key = GlobalKey<NavigatorState>();
  final _nestedNavigationUserKey = GlobalKey<NavigatorState>();
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
      StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return DashboardPage(
              navigationShell: navigationShell,
            );
          },
          branches: [
            StatefulShellBranch(
              navigatorKey: _nestedNavigation1Key,
              routes: [
                GoRoute(
                    path: NavigationRouteNames.homeRoute,
                    parentNavigatorKey: _nestedNavigation1Key,
                    pageBuilder: (context, state) => const NoTransitionPage(
                          child: HomeView(),
                        ),
                    routes: const []),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _nestedNavigationUserKey,
              routes: [
                GoRoute(
                  path: NavigationRouteNames.usersRoute,
                  parentNavigatorKey: _nestedNavigationUserKey,
                  pageBuilder: (context, state) => const NoTransitionPage(
                    child: UsersView(),
                  ),
                  routes: [
                    GoRoute(
                      path: NavigationRouteNames
                          .addUserRoute.convertRoutePathToRouteName,
                      name: NavigationRouteNames
                          .addUserRoute.convertRoutePathToRouteName,
                      pageBuilder: (context, state) => const MaterialPage(
                        fullscreenDialog: true,
                        child: AddUserView(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
    ],
  );
}
