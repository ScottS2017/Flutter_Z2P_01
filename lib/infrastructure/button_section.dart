import 'package:flutter/material.dart';
import 'custom_button.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
    required this.callback1,
    required this.callback2,
    required this.callback3,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.label,
  }) : super(key: key);

  final String label;
  final Color color1;
  final Color color2;
  final Color color3;
  final VoidCallback callback1;
  final VoidCallback callback2;
  final VoidCallback callback3;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(
            fontSize: 12 ,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                callback: callback1,
                text: 'Example',
                color: color1,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomButton(
                callback: callback2,
                text: 'Exercise',
                color: color2,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomButton(
                callback: callback3,
                text: 'Solution',
                color: color3,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
