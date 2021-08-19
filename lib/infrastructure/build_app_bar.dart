import 'package:flutter/material.dart';

import 'app_textstyles.dart';

Widget buildAppBarTitle({
  required String title,
}) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      const SizedBox(
        width: 5,
      ),
      Text(
        title,
        style: AppTextStyles.appBarTextStyle,
      ),
    ],
  );
}
