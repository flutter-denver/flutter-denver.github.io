// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_denver/widgets/event_details/event_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  static const _headerColor = Color(0xbb23aeff);

  static const _meetupLogo = 'assets/images/logos/meetup_logo_script.png';

  static const TextStyle _headerStyle1 = TextStyle(
    color: Colors.white,
    fontFamily: 'Roboto',
    fontSize: 46,
    fontWeight: FontWeight.w500,
    // letterSpacing: 1,
    // height: 1
  );

  static const TextStyle _headerStyle2 = TextStyle(
    color: Colors.black87,
    fontFamily: 'Roboto',
    fontSize: 24,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  Widget _header() {
    return IntrinsicHeight(
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 28, 0, 14),
        color: _headerColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              flex: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Next',
                    style: _headerStyle1,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                    child: Image.asset(_meetupLogo, height: 64),
                  ),
                  Text(
                    'Event',
                    style: _headerStyle1,
                  ),
                ],
              ),
            ),
            Expanded(flex: 5, child: Container()),
            Expanded(
              flex: 45,
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Flutter Progressive Web App\nMarch 3, 2020 6:00 pm',
                  style: _headerStyle2,
                ),
              ),
            ),
            // Text(
            //   'Flutter Progressive Web App\nMarch 3, 2020 6:00 pm',
            //   style: _headerStyle2,
            // )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _header(),
        Expanded(
          child: Container(
            alignment: Alignment.bottomCenter,
            // height: 400,
            child: EventDetails(),
          ),
        ),
        // _header(),
      ],
    );
  }
}
