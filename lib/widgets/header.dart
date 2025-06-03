import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../utils/utils.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/logo.png', width: 56, height: 28),
              Text(
                'DELIVERY ADDRESS',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                  height: 2.8,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: HugeIcon(
                  icon: HugeIcons.strokeRoundedNotification02,
                  color: AppColor.gray700,
                ),
              ),
            ],
          ),
          Text(
            'Umuezike Road, Oyo State',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              letterSpacing: 0,
              height: 2.334,
            ),
          ),
        ],
      ),
    );
  }
}
