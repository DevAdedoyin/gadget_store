import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gadget_store/common/gaps.dart';
import 'package:gadget_store/constants/icon_sizes.dart';
import 'package:gadget_store/data/flash_sales.dart';
import 'package:go_router/go_router.dart';
import '../common/elevated_button.dart';
import '../constants/colors.dart';
import '../constants/gap_sizes.dart';
import '../repository/detail_index.dart';

class DetailPage extends ConsumerStatefulWidget {
  const DetailPage({super.key});

  @override
  ConsumerState<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends ConsumerState<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final detailIndex_ = ref.watch(detailIndex);
    Size size = MediaQuery.sizeOf(context);
    final builderIndex_ = ref.watch(builderIndex);
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: GapSizes.mediumGap, vertical: GapSizes.biggerGap),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                            alignment: Alignment.center,
                            iconSize:
                                MaterialStatePropertyAll(IconSizes.iconSize)),
                        icon: const Icon(Icons.arrow_back),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                            iconColor: MaterialStatePropertyAll(Colors.red),
                            alignment: Alignment.center,
                            iconSize:
                                MaterialStatePropertyAll(IconSizes.iconSize)),
                        icon: const Icon(Icons.favorite),
                      ),
                      horizontalGap(GapSizes.smallerGap),
                      IconButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                            iconColor: MaterialStatePropertyAll(Colors.black),
                            alignment: Alignment.center,
                            iconSize:
                                MaterialStatePropertyAll(IconSizes.iconSize)),
                        icon: const Icon(Icons.cloud_upload_outlined),
                      ),
                    ],
                  ),
                  verticalGap(GapSizes.smallGap),
                  Container(
                    height: size.height * 0.30,
                    child: PageView.builder(
                        onPageChanged: (pageChangedIndex) {
                          ref.read(builderIndex.notifier).state =
                              pageChangedIndex;
                        },
                        itemBuilder: (_, index) {
                          return Container(
                            // color: Colors.yellow,
                            // height: size.width * 0.25,

                            child: Image.network(
                              FlashSaleList
                                  .flashSales[detailIndex_].imageList[index],
                              fit: BoxFit.contain,
                            ),
                          );
                        },
                        itemCount: FlashSaleList
                            .flashSales[detailIndex_].imageList.length),
                  ),
                  verticalGap(GapSizes.mediumGap),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          FlashSaleList.flashSales[detailIndex_].imageList
                              .length, (index) {
                        return Container(
                          height: builderIndex_ == index ? 13 : 10,
                          width: builderIndex_ == index ? 13 : 10,
                          margin: const EdgeInsets.symmetric(
                              horizontal: GapSizes.smallestGap),
                          decoration: BoxDecoration(
                              color: builderIndex_ == index
                                  ? Colors.black54
                                  : Colors.grey,
                              borderRadius: BorderRadius.circular(100)),
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
            verticalGap(GapSizes.smallestGap),
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(
                  horizontal: GapSizes.mediumGap, vertical: GapSizes.biggerGap),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    FlashSaleList.flashSales[detailIndex_].itemName,
                    style: textTheme.headlineMedium,
                  ),
                  verticalGap(GapSizes.smallGap),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: GapSizes.smallestGap,
                            vertical: GapSizes.smallestGap),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: const Border.symmetric(
                            horizontal: BorderSide(color: Colors.grey),
                            vertical: BorderSide(color: Colors.grey),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: AppColors.metaIconColor),
                            Text(FlashSaleList.flashSales[detailIndex_].rating),
                            Text(
                              "  ${FlashSaleList.flashSales[detailIndex_].reviews} reviews",
                              style: textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: GapSizes.smallGap,
                            vertical: GapSizes.smallestGap),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: const Border.symmetric(
                            horizontal: BorderSide(color: Colors.grey),
                            vertical: BorderSide(color: Colors.grey),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.thumb_up_sharp,
                                color: AppColors.tertiaryColor),
                            horizontalGap(GapSizes.smallerGap),
                            Text(FlashSaleList.flashSales[detailIndex_].likes),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: GapSizes.smallGap,
                            vertical: GapSizes.smallestGap),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: const Border.symmetric(
                            horizontal: BorderSide(color: Colors.grey),
                            vertical: BorderSide(color: Colors.grey),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.message,
                                color: AppColors.greyColor),
                            horizontalGap(GapSizes.smallerGap),
                            Text(FlashSaleList
                                .flashSales[detailIndex_].comments),
                          ],
                        ),
                      ),
                    ],
                  ),
                  verticalGap(GapSizes.smallGap),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "${FlashSaleList.flashSales[detailIndex_].discountedPrice}  ", style: textTheme.titleMedium,),
                        Text(
                            "from ${FlashSaleList.flashSales[detailIndex_].pricePerMonth} per month"),
                        const Icon(Icons.info_outlined),
                      ],
                    ),
                  ),
                  verticalGap(GapSizes.bigGap),
                  Text(
                    FlashSaleList.flashSales[detailIndex_].description,
                    style: textTheme.labelLarge,
                  ),
                  verticalGap(GapSizes.bigGap),
                  elevatedButton(textTheme, "Add to cart"),
                  verticalGap(GapSizes.smallGap),
                  const Text("Delivery on 23rd June")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
