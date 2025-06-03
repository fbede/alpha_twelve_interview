import 'package:alpha_twelve_interview/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';

import '../utils/utils.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Colors.white,
      indicatorColor: AppColor.primary,
      labelTextStyle: labelTextStyle(),
      onDestinationSelected: (x) => onDestinationSelected(context, x),
      destinations: [
        NavigationDestination(
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedHome07,
            color: Colors.white,
          ),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Badge.count(
            backgroundColor: AppColor.badge,
            count: 0,
            child: HugeIcon(
              icon: HugeIcons.strokeRoundedShoppingCart01,
              color: Colors.black,
            ),
          ),
          label: 'Cart',
        ),
        NavigationDestination(
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedFavourite,
            color: Colors.black,
          ),
          label: 'Favourites',
        ),
        NavigationDestination(
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedUserCircle,
            color: Colors.black,
          ),
          label: 'Profile',
        ),
      ],
    );
  }

  void onDestinationSelected(BuildContext context, int x) {
    if (x == 1) {
      context.pushNamed(AppRoutes.cart);
    }
  }

  WidgetStateTextStyle labelTextStyle() {
    return WidgetStateTextStyle.resolveWith((state) {
      final textstyle = TextStyle().copyWith(
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
        fontSize: 12,
        height: 1.334,
      );
      if (state.contains(WidgetState.selected)) {
        return textstyle.copyWith(color: AppColor.primary);
      }
      return textstyle;
    });
  }
}
