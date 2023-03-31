// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../mocks/mocks.dart';

class TestApp extends StatelessWidget {
  const TestApp({
    required this.child,
    this.stackRouter,
    super.key,
  });

  final Widget child;
  final StackRouter? stackRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial (Test)',
      debugShowCheckedModeBanner: false,
      home: StackRouterScope(
        controller: stackRouter ?? MockStackRouter(),
        stateHash: 0,
        child: child,
      ),
    );
  }
}
