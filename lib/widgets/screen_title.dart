import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({super.key, required this.title, required this.onPressed});

  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          padding: EdgeInsets.zero,
          icon: Icon(Icons.chevron_left, color: AppColor.gray500),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            letterSpacing: 0,
            height: 1.334,
          ),
        ),
      ],
    );
  }
}
