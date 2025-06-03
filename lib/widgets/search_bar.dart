import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../utils/utils.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 36,
        child: TextField(
          enabled: false,
          decoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(
              color: AppColor.gray300,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              letterSpacing: 0,
              height: 1.429,
            ),
            contentPadding: EdgeInsets.zero,
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            ),
            prefixIcon: HugeIcon(
              icon: HugeIcons.strokeRoundedSearch01,
              color: AppColor.gray400,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
