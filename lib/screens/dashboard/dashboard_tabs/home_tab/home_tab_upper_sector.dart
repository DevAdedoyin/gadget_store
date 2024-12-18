import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:gadget_store/common/gaps.dart';
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
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipOval(
                  child: Container(
                      padding: const EdgeInsets.all(10),
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
                  borderSide: const BorderSide(
                      color: Colors.white, style: BorderStyle.solid, width: 1),
                ),
                badgeContent: const Text('4'),
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
          ),
          verticalGap(
            GapSizes.smallGap,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Search the entire shop",
              prefixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: AppColors.secondaryColor,
              hintStyle: textTheme.labelLarge,
              // isDense: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 9),
              isCollapsed: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          verticalGap(
            GapSizes.smallGap,
          ),
          Container(
            height: 85,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(
                      vertical: GapSizes.smallerGap,
                      horizontal: GapSizes.smallGap),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.metaIconColor),
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      const Text("Delivery is  "),
                      Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 3, horizontal: 7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          alignment: Alignment.center,
                          child: const Text(
                            "50% ",
                            textAlign: TextAlign.center,
                            style: TextStyle(),
                          )),
                      Text(" cheaper")
                    ],
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 0,
                  child: Image.asset("assets/images/delivery.png", height: 80, width: 50,fit: BoxFit.cover),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
