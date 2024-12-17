import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:gadget_store/constants/colors.dart';
import 'package:gadget_store/constants/gap_sizes.dart';

class HomeTabTop extends StatelessWidget {
  const HomeTabTop({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: GapSizes.mediumGap, vertical: GapSizes.biggerGap),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipOval(
                  child: Container(
                      padding: EdgeInsets.all(10),
                      color: AppColors.tertiaryColor,
                      child: const Icon(Icons.settings))),
              Column(
                children: [
                  Text("Delivery address", style: textTheme.labelLarge),
                  Text("92 High Street, London", style: textTheme.titleMedium)
                ],
              ),
              badges.Badge(
                badgeStyle: badges.BadgeStyle(
                  badgeColor: AppColors.metaIconColor,
                  borderSide: BorderSide(
                      color: Colors.white, style: BorderStyle.solid, width: 1),
                ),
                badgeContent: Text('4'),
                child: ClipOval(
                  child: Container(
                    color: AppColors.secondaryColor,
                    padding: const EdgeInsets.all(10),
                    child: const Icon(
                      Icons.notifications_none_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
