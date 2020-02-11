import 'package:flutter/material.dart';
import 'package:flutter_denver/routing/router.dart';
import 'package:flutter_denver/widgets/navigation_bar/navbar_item.dart';
import 'package:flutter_denver/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 0, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.ideographic,
        children: <Widget>[
          NavBarLogo(),
          Row(
            // mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              NavBarItem('Home', Routes.home),
              NavBarItem('Events', Routes.events),
              NavBarItem('Members', Routes.members),
              NavBarItem('About', Routes.about),
            ],
          )
        ],
      ),
    );
  }
}
