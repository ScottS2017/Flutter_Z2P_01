import 'package:flutter/material.dart';

import 'theme.dart';

AppBar buildAppBar({
  required VoidCallback onBackPressed,
  required String title,
}) {
  return AppBar(
    foregroundColor: Colors.transparent,
    elevation: 0,
    leadingWidth: 90,
    leading: TextButton(
      onPressed: onBackPressed,
      child: Padding(
        padding: const EdgeInsets.only(top: 7),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Icon(
              Icons.arrow_back,
              color: appBarBackButtonForegroundColor,
              size: 15,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: const TextStyle(
                color: appBarBackButtonForegroundColor,
                fontSize: 15,
                height: 1,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
