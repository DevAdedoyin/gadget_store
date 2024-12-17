
import 'package:flutter/cupertino.dart';
import 'package:gadget_store/routing/app_routes.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
        context.go(AppRoutes.dashboard);
    },);
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
