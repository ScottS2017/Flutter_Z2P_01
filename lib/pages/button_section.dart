import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/widgets/common/custom_button.dart';

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
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                callback: callback1,
                text: 'Example',
                color: Color(0xFFd8d8d8),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomButton(
                callback: callback2,
                text: 'Exercise',
                color: Color(0xFFd8d8d8),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomButton(
                callback: callback3,
                text: 'Solution',
                color: Color(0xFFd8d8d8),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
