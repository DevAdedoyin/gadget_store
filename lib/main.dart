import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gadget_store/routing/go_router_provider.dart';
import 'package:gadget_store/screens/dashboard/dashboard_screen.dart';
import 'package:gadget_store/screens/splash_screen.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: GadgetStoreApp()));
}

class GadgetStoreApp extends StatelessWidget {
  const GadgetStoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Gadget Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routeInformationParser: goRouter.routeInformationParser,
      routeInformationProvider: goRouter.routeInformationProvider,
      routerDelegate: goRouter.routerDelegate,
      debugShowCheckedModeBanner: false,

    );
  }
}
