import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gadget_store/common/gaps.dart';
import 'package:gadget_store/constants/icon_sizes.dart';
import 'package:gadget_store/data/flash_sales.dart';
import 'package:go_router/go_router.dart';
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
                  verticalGap(GapSizes.smallGap),
                  List
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
