import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'config/flavor.dart';
import 'providers/providers.dart';

Future<void> bootstrap(
  Flavor flavor,
  FutureOr<Widget> Function() builder,
) async {
  WidgetsFlutterBinding.ensureInitialized();
  final app = await builder();

  runApp(
    ProviderScope(
      overrides: [
        flavorProvider.overrideWith((ref) => flavor),
      ],
      child: app,
    ),
  );
}
