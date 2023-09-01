import 'package:go_router/go_router.dart';
import 'package:gorout/screens/1_basic_screen.dart';
import 'package:gorout/screens/2_named_screen.dart';
import 'package:gorout/screens/3_push_screen.dart';
import 'package:gorout/screens/4_pop_base_screen.dart';
import 'package:gorout/screens/5_pop_return_screen.dart';
import 'package:gorout/screens/6_path_param_screen.dart';
import 'package:gorout/screens/root_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const RootScreen(),
      routes: [
        GoRoute(
          path: 'basic',
          builder: (context, state) => const BasicScreen(),
        ),
        GoRoute(
          path: 'named',
          name: 'named_screen',
          builder: (context, state) => const NamedScreen(),
        ),
        GoRoute(
          path: 'push',
          builder: (context, state) => const PushScreen(),
        ),
        GoRoute(
          path: 'pop',
          builder: (context, state) => const PopBaseScreen(),
          routes: [
            GoRoute(
              path: 'return',
              builder: (context, state) {
                return const PopReturnScreen();
              },
            ),
          ],
        ),
        GoRoute(
            path: 'path_param/:id',
            builder: (context, state) {
              return PathParamScreen();
            },
            routes: [
              GoRoute(
                path: ':name',
                builder: (context, state) {
                  return PathParamScreen();
                },
              )
            ]),
      ],
    ),
  ],
);
