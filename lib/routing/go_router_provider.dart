import 'package:gadget_store/routing/route_error_screen.dart';
import 'package:gadget_store/screens/dashboard/dashboard_screen.dart';
import 'package:go_router/go_router.dart';
import '../screens/detail_page.dart';
import '../screens/splash_screen.dart';
import 'app_routes.dart';

GoRouter goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
        path: '/',
        name: AppRoutes.root,
        builder: (context, state) => const SplashScreen()),
    GoRoute(
      path: AppRoutes.dashboard,
      builder: (context, state) => const DashboardScreen(),
    ),
    GoRoute(
      path: AppRoutes.detailPage,
      builder: (context, state) => const DetailPage(),
    ),
  ],
  errorBuilder: (context, state) => RouteErrorScreen(
    errorMsg: state.error.toString(),
  ),
);
