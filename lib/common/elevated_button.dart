import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/gap_sizes.dart';

elevatedButton(textTheme, label) => SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              AppColors.tertiaryColor,
            ),
            textStyle: MaterialStatePropertyAll(
              textTheme.headlineSmall,
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(vertical: GapSizes.smallGap))),
        child: Text(
          label,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
