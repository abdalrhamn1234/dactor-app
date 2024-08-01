import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconTextWidget extends StatelessWidget {
  final String text;
  final String iconPath;
  final Color color;

  const IconTextWidget({super.key, required this.text, required this.iconPath, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // ignore: deprecated_member_use
        SvgPicture.asset(iconPath, color: color),
        const SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}
