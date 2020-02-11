import 'package:flutter/material.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-1.0, -1.0),
          end:
              Alignment(1.0, 1.0), // 10% of the width, so there are ten blinds.
          colors: [
            const Color(0x6fB5BFBD),
            const Color(0x6f08A07D),
            // const Color(0x3A05644E)
            // const Color(0x3a05644E)
          ], // whitish to gray
          stops: [
            0.0, 1.0
          ]
          // tileMode: TileMode.repeated, // repeats the gradient over the canvas
        ),
      ),
      child: Placeholder(
        color: Colors.transparent,
      ),
    );
  }
}
