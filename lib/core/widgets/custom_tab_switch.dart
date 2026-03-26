import 'package:flutter/material.dart';

class CustomTabSwitch extends StatelessWidget {
  final bool isRight;
  final ValueChanged<bool> onChanged;
  final Widget iconLeft;
  final Widget iconRight;

  const CustomTabSwitch({
    super.key,
    required this.isRight,
    required this.onChanged,
    required this.iconLeft,
    required this.iconRight,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var primaryColor = theme.colorScheme.primary;

    return GestureDetector(
      onTap: () {
        onChanged(!isRight);
      },
      child: Container(
        width: 100, // Approximate width based on design
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: primaryColor, width: 2),
          color: Colors.transparent,
        ),
        child: Stack(
          children: [
            AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              alignment: isRight ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: 48, // Slightly less than half of container width
                height: 36,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: Center(child: iconLeft)),
                Expanded(child: Center(child: iconRight)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
