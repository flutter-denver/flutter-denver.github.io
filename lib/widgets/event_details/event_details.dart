import 'package:flutter/material.dart';
import 'package:flutter_denver/model/about_data.dart';
import 'package:flutter_denver/model/data_manager.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:provider/provider.dart';

const String defaultEventDescription = '''# No Event Description Available

This event does not have any description information.
''';

class EventDetails extends StatelessWidget {
  const EventDetails({Key key}) : super(key: key);

  static const _defaultEventImage =
      'assets/images/logos/flutter_denver_logo_400x200.png';

  // Define the decoration used for the parent event container.
  static const _parentContainerDecoration = BoxDecoration(
    gradient: LinearGradient(
        begin: const Alignment(-1.0, -1.0),
        end: const Alignment(
            1.0, 1.0), // 10% of the width, so there are ten blinds.
        colors: [
          const Color(0x6fB5BFBD),
          const Color(0x6f08A07D),
        ], // whitish to gray
        stops: [
          0.0,
          1.0
        ]),
  );

  // Define the decoration used for the event image.
  static const _imageDecoration = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Color(0x2f000000),
        blurRadius: 16,
        offset: Offset(8, 8),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    final AboutData value = Provider.of<DataManager>(context).aboutData;
    print('Value: ${value.data}');
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 65),
      decoration: _parentContainerDecoration,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 50,
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 216,
                width: 416,
                child: Container(
                  decoration: _imageDecoration,
                  child: Image.asset(_defaultEventImage),
                ),
              ),
            ),
          ),
          Expanded(flex: 5, child: Container()),
          Expanded(
            flex: 45,
            child: Align(
              alignment: Alignment.topLeft,
              child: MarkdownBody(
                data: defaultEventDescription,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
