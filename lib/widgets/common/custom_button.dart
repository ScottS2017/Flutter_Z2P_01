import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/resource_files/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.callback,
    this.height = 35,
    this.color = const Color(0xFFD3DCE4),
  }) : super(key: key);

  final String text;
  final double height;
  final Color color;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        height: height,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            const BoxShadow(
              color: AppColors.dropShadowColor,
              blurRadius: 2,
              offset: Offset(1,1),
            ),
          ],
        ),
        child: FittedBox(
          child: Text(text,
          style: const TextStyle(
            shadows: [
              Shadow(
                color: AppColors.dropShadowColor,
                blurRadius: 1,
                offset: Offset(1,1),
              ),
            ]
          ),),
        ),
      ),
    );
  }
}
