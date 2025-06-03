import 'package:alpha_twelve_interview/utils/utils.dart';
import 'package:flutter/material.dart' hide SearchBar, NavigationBar;
import 'package:hugeicons/hugeicons.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Header(),
            const SizedBox(height: 8),
            SearchBar(),
            const SizedBox(height: 16),
            const Divider(height: 2, thickness: 2),
            ScreenTitle(title: 'Technology', onPressed: () {}),
            const Divider(height: 1, thickness: 1),
            const SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Smartphones, Laptops & Assecories',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0,
                  height: 1,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: AppNavigationBar(),
      ),
    );
  }
}
