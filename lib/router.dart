import 'package:go_router/go_router.dart';
import 'package:gorout/screens/1_basic_screen.dart';
import 'package:gorout/screens/2_named_screen.dart';
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
      ],
    ),
  ],
);
