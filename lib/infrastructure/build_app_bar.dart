import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_textstyles.dart';
import 'theme.dart';

Widget buildAppBarTitle({
  required VoidCallback onBackPressed,
  required String title,
}) {
  return TextButton(
      onPressed: onBackPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Icon(
            Icons.arrow_back,
            color: AppColors.whiteTextColor,
            size: 15,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: AppTextStyles.appBarTextStyle,
          ),
        ],
      ),
  );
}
