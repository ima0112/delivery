// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import 'package:delivery/feature/presentation/pages/items/items_page.dart';
import 'core/navigation/transitions.dart';
import 'core/theme/dark_theme.dart';
import 'core/theme/light_theme.dart';
import 'feature/presentation/bloc/items/items_bloc.dart';
import 'injection_container.dart';

void main() {
  configureDependencies();
  runApp(
    BlocProvider(
      create: (context) => getIt<ItemsBloc>(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      checkerboardOffscreenLayers: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      title: 'Delivery',
      themeMode: ThemeMode.system,
      theme: lightThemeData,
      darkTheme: darkThemeData,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }

  late final _router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/items',
    routes: [
      GoRoute(
        path: '/items',
        name: 'items',
        pageBuilder: (context, state) => CupertinoTransitionPageWrapper(
          transitionKey: state.pageKey,
          screen: ItemsPage(),
        ),
        routes: [],
      ),
    ],
  );
}
