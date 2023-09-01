import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorout/layout/default_layout.dart';

class PathParamScreen extends StatelessWidget {
  const PathParamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: ListView(
        children: [
          Text('Path Param : ${GoRouterState.of(context).pathParameters}'),
          ElevatedButton(
            onPressed: () {
              context.go('/path_param/456/wogks');
            },
            child: const Text(
              'Go One More',
            ),
          ),
        ],
      ),
    );
  }
}
