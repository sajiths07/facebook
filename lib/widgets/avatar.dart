import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar(
      {super.key,
      required this.displayimage,
      required this.displaystatus,
      this.displayborder = false,
      this.width=50,
      this.height=50});

  final String displayimage;
  final bool displaystatus;
  final bool displayborder;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    Widget statusindicator;
    if (displaystatus == true) {
      statusindicator = Positioned(
        bottom: 0,
        right: 2,
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              color: Colors.greenAccent,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
              )),
        ),
      );
    } else {
      statusindicator = SizedBox();
    }

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayborder
                ? Border.all(
                    color: Colors.blueAccent,
                    width: 3,
                  )
                : Border(),
          ),
          padding: EdgeInsets.only(left: 5, right: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayimage,
              width: width,
              height: height,
            ),
          ),
        ),
        statusindicator,
      ],
    );
  }
}
