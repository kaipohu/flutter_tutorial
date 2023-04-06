import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_app.dart';

extension WidgetTesterExtension on WidgetTester {
  Future<void> pumpWidgetInTestApp(
    Widget widget, {
    List<Override> overrides = const [],
    StackRouter? stackRouter,
  }) {
    return pumpWidget(
      TestApp(
        stackRouter: stackRouter,
        overrides: overrides,
        child: widget,
      ),
    );
  }
}
