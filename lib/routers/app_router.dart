import 'package:flutter/widgets.dart';
import 'package:forecast/configs/di/di.dart';
import 'package:forecast/presentation/screens/dashboard/dashboard_page.dart';
import 'package:forecast/presentation/screens/explore_page.dart';
import 'package:forecast/presentation/screens/home_page.dart';
import 'package:forecast/presentation/screens/mock/mock_screen.dart';
import 'package:forecast/presentation/screens/setting_page.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forecast/presentation/screens/mock/bloc/mock_bloc.dart';
import 'package:forecast/presentation/screens/profile_page.dart';

class AppRouter {
  AppRouter._();

  static const String loginPage = '/login';
  static const String registerPage = '/register';
  static const String homePage = '/home';
  static const String explorePage = '/explore';
  static const String settingsPage = '/settings';
  static const String profilePage = '/profile';
  static const String mockPage = '/mock';

  static final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

  static final routers = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: AppRouter.homePage,
    routes: [
      GoRoute(
        path: AppRouter.loginPage,
        builder: (context, state) => const SizedBox(),
      ),
      GoRoute(
        path: AppRouter.registerPage,
        builder: (context, state) => const SizedBox(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => DashboardPage(
          navigationShell: navigationShell,
        ),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRouter.homePage,
                builder: (context, state) => const HomePage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRouter.explorePage,
                builder: (context, state) => const ExplorePage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRouter.settingsPage,
                builder: (context, state) => const SettingsPage(),
                routes: [
                  GoRoute(
                    path: AppRouter.profilePage,
                    builder: (context, state) => ProfilePage(
                      user: state.extra as User,
                    ),
                  ),
                  GoRoute(
                    path: AppRouter.mockPage,
                    builder: (context, state) => BlocProvider(
                      create: (context) => DI().getIt<MockBloc>(),
                      child: const MockScreen(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
    //    redirect: (context, state) {
    //   final isLoggedIn = AuthService.instance.isLoggedIn;
    //   final isGoingToAuth = state.fullPath == '/login' || state.fullPath == '/register';

    //   if (!isLoggedIn && !isGoingToAuth) return '/login';
    //   if (isLoggedIn && isGoingToAuth) return '/home';
    //   return null;
    // },
  );
}
