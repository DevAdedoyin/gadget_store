import 'package:flutter/material.dart';
import 'package:gadget_store/common/gaps.dart';
import 'package:gadget_store/constants/colors.dart';
import 'package:gadget_store/constants/font_sizes.dart';
import 'package:gadget_store/data/category_data.dart';
import 'package:gadget_store/data/flash_sales.dart';
import 'package:gadget_store/routing/app_routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gadget_store/routing/go_router_provider.dart';
import 'package:go_router/go_router.dart';

import '../../../../constants/gap_sizes.dart';
import '../../../../repository/detail_index.dart';
import '../../../../routing/go_router_provider.dart';

class HomeTabBottom extends ConsumerWidget {
  const HomeTabBottom({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final detailIndex_ = ref.watch(detailIndex);
    final builderIndex_ = ref.watch(builderIndex);
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
            height: 120,
            child: ListView.builder(
              shrinkWrap: true,
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
                        child: Image.network(CategoryList
                            .categoryItems[index].categoryImageLink),
                      ),
                      verticalGap(GapSizes.smallGap),
                      Text(CategoryList.categoryItems[index].categoryName)
                    ],
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
          verticalGap(GapSizes.smallGap),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Flash Sale",
                    style: textTheme.headlineMedium,
                  ),
                  horizontalGap(GapSizes.smallerGap),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.tertiaryColor),
                      alignment: Alignment.center,
                      child: const Text(
                        "09:43:55",
                        textAlign: TextAlign.center,
                        style: TextStyle(),
                      )),
                ],
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
          verticalGap(GapSizes.smallestGap),
          SizedBox(
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: FlashSaleList.flashSales.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 275),
                itemBuilder: (_, index) {
                  return GestureDetector(
                    onTap: () {
                      ref.read(builderIndex.notifier).state = 0;
                      ref.read(detailIndex.notifier).state = index;
                      context.push(AppRoutes.detailPage);
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              color: AppColors.secondaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Image.network(
                              FlashSaleList.flashSales[index].image,
                              fit: BoxFit.contain,
                              height: 120,
                              width: 120,
                            ),
                          ),
                        ),
                        verticalGap(GapSizes.smallerGap),
                        Text(
                          FlashSaleList.flashSales[index].itemName,
                          softWrap: true,
                        ),
                        verticalGap(GapSizes.smallestGap),
                        Row(
                          children: [
                            Text(FlashSaleList
                                .flashSales[index].discountedPrice),
                            horizontalGap(GapSizes.smallestGap),
                            Text(
                              FlashSaleList.flashSales[index].originalPrice,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: FontSizes.smallerFont,
                                decoration: TextDecoration.lineThrough,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
