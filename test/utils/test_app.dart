// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/config/flavor.dart';
import 'package:flutter_tutorial/providers/providers.dart';

import '../mocks/mocks.dart';

class TestApp extends StatelessWidget {
  const TestApp({
    required this.child,
    this.overrides = const [],
    this.stackRouter,
    super.key,
  });

  final Widget child;
  final List<Override> overrides;
  final StackRouter? stackRouter;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        flavorProvider.overrideWith((ref) => const Flavor.local()),
        ...overrides,
      ],
      child: MaterialApp(
        title: 'Flutter Tutorial (Test)',
        debugShowCheckedModeBanner: false,
        home: StackRouterScope(
          controller: stackRouter ?? MockStackRouter(),
          stateHash: 0,
          child: child,
        ),
      ),
    );
  }
}
