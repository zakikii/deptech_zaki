import 'package:deptech_zaki/app/routes/routes_provider.dart';
import 'package:deptech_zaki/app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FlutterRiverpodTodoApp extends ConsumerWidget {
  const FlutterRiverpodTodoApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.watch(routesProvider);
    final theme = ref.watch(themeProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: theme.buildTheme(context),
      routerConfig: route,
    );
  }
}
