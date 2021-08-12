import 'package:flutter/material.dart';
import 'custom_button.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
    required this.callback1,
    required this.callback2,
    required this.callback3,
    required this.label,
  }) : super(key: key);

  final String label;
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
            fontSize: 18,
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
                color: const Color(0xFFd8d8d8),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomButton(
                callback: callback2,
                text: 'Exercise',
                color: const Color(0xFFd8d8d8),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomButton(
                callback: callback3,
                text: 'Solution',
                color: const Color(0xFFd8d8d8),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
