import 'package:flutter/material.dart';
import 'package:flutter_denver/locator.dart';
import 'package:flutter_denver/routing/router.dart';
import 'package:flutter_denver/services/navigation_service.dart';
import 'package:flutter_denver/widgets/centered_view/centered_view.dart';
import 'package:flutter_denver/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter_denver/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: Routes.home,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
