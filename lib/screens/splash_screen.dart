import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gadget_store/constants/font_sizes.dart';
import 'package:gadget_store/routing/app_routes.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

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
    Future.delayed(
      const Duration(milliseconds: 4000),
      () {
        context.go(AppRoutes.dashboard);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "Gadget Store",
          style: GoogleFonts.aBeeZee(
              fontSize: FontSizes.biggestFont, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
