import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:parking/dummyscrren.dart';
import 'package:parking/screens/checkoutscreen.dart';
import 'package:parking/widgets/scaffold_with_nav_bar.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');




void main() {
  runApp(Loginscreen());
}

/// An example demonstrating how to use [ShellRoute]
class Loginscreen extends StatelessWidget {

  Loginscreen({super.key});

  final GoRouter _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/a',
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      /// Application shell
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return ScaffoldWithNavBar(child: child);
        },
        routes: <RouteBase>[
          /// The first screen to display in the bottom navigation bar.
          GoRoute(
            path: '/a',
            builder: (BuildContext context, GoRouterState state) {
              return  Loginscreen();
            },
            // routes: <RouteBase>[
            //   // The details screen to display stacked on the inner Navigator.
            //   // This will cover screen A but not the application shell.
            //   GoRoute(
            //     path: 'details',
            //     builder: (BuildContext context, GoRouterState state) {
            //       return const DetailsScreen(label: 'A');
            //     },
            //   ),
            // ],
          ),

          /// Displayed when the second item in the the bottom navigation bar is
          /// selected.
          GoRoute(
            path: '/b',
            builder: (BuildContext context, GoRouterState state) {
              return const Registerscreen();
            },
            // routes: <RouteBase>[
            //   /// Same as "/a/details", but displayed on the root Navigator by
            //   /// specifying [parentNavigatorKey]. This will cover both screen B
            //   /// and the application shell.
            //   GoRoute(
            //     path: 'details',
            //     parentNavigatorKey: _rootNavigatorKey,
            //     builder: (BuildContext context, GoRouterState state) {
            //       return const DetailsScreen(label: 'B');
            //     },
            //   ),
            // ],
          ),

          /// The third screen to display in the bottom navigation bar.
          GoRoute(
            path: '/c',
            builder: (BuildContext context, GoRouterState state) {
              return const Checkoutscreen();
            },
            // routes: <RouteBase>[
            //   // The details screen to display stacked on the inner Navigator.
            //   // This will cover screen A but not the application shell.
            //   GoRoute(
            //     path: 'details',
            //     builder: (BuildContext context, GoRouterState state) {
            //       return const DetailsScreen(label: 'C');
            //     },
            //   ),
            // ],
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: _router,
    );
  }
}
