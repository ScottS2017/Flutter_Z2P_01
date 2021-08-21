import 'package:flutter/material.dart';

import 'app_textstyles.dart';

AppBar buildAppBar({
  required String title,
}) {
  return AppBar(
    key: ValueKey(title),
    automaticallyImplyLeading: true,
    elevation: 4,
    title: Align(
      alignment: Alignment.centerLeft,
      child: Row(
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
      ),
    ),
  );
}
