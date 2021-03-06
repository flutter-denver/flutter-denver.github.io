import 'package:flutter/material.dart';
import 'package:flutter_denver/locator.dart';
import 'package:flutter_denver/services/navigation_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 44.0),
        child: Text(
          title,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
