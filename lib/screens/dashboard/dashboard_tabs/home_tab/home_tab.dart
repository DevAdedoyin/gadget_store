import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gadget_store/screens/dashboard/dashboard_tabs/home_tab/home_tab_upper_sector.dart';

class HomeTab extends ConsumerStatefulWidget {
  const HomeTab({super.key});

  @override
  ConsumerState<HomeTab> createState() => _CartTabState();
}

class _CartTabState extends ConsumerState<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SingleChildScrollView(child: Column(children: [
        HomeTabTop()
      ],),),
    );
  }
}
