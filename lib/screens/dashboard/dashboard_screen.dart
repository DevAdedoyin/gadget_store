import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gadget_store/constants/colors.dart';
import 'package:gadget_store/repository/bottom_tab_repo.dart';
import 'package:gadget_store/screens/dashboard/dashboard_tabs/cart.dart';
import 'package:gadget_store/screens/dashboard/dashboard_tabs/catalog.dart';
import 'package:gadget_store/screens/dashboard/dashboard_tabs/favorites.dart';
import 'package:gadget_store/screens/dashboard/dashboard_tabs/home_tab/home_tab.dart';
import 'package:gadget_store/screens/dashboard/dashboard_tabs/profile.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  final List<Widget> dashboardTabs = const [
    HomeTab(),
    CatalogTab(),
    CartTab(),
    FavoritesTab(),
    ProfileTab()
  ];

  @override
  Widget build(BuildContext context) {
    final bottomNavTab = ref.watch(tabIndex);
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: dashboardTabs[bottomNavTab],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          ref.read(tabIndex.notifier).state = index;
        },
        currentIndex: bottomNavTab,
        selectedIconTheme: IconThemeData(color: AppColors.tertiaryColor),
        unselectedIconTheme: IconThemeData(color: AppColors.greyColor),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor:  AppColors.tertiaryColor,
        unselectedItemColor: AppColors.greyColor,
        elevation: 0,
        selectedLabelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(color: AppColors.greyColor),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.houseUser),
            label: "Home",

          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.searchengin),
            label: "Catalog",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cartShopping),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heart),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
