import 'package:flutter/material.dart';
import 'package:gadget_store/common/gaps.dart';
import 'package:gadget_store/constants/colors.dart';
import 'package:gadget_store/data/category_data.dart';

import '../../../../constants/gap_sizes.dart';

class HomeTabBottom extends StatelessWidget {
  const HomeTabBottom({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(
          horizontal: GapSizes.mediumGap, vertical: GapSizes.biggerGap),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: textTheme.headlineMedium,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                // Ensures the button doesn't take full width
                children: [
                  Text(
                    'See all',
                    style: textTheme.labelLarge,
                  ),
                  const SizedBox(width: 8),
                  // Add spacing between the text and the icon
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                      color: AppColors.secondaryColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
          verticalGap(GapSizes.smallGap),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: CategoryList.categoryItems.length,
              itemBuilder: (_, index) {
                return Container(
                  margin: const EdgeInsets.only(right: GapSizes.mediumGap),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(50)),
                        height: 70,
                        width: 70,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Image.network(
                            CategoryList.categoryItems[index].categoryImageLink),
                      ),
                      Text(CategoryList.categoryItems[index].categoryName)
                    ],
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
