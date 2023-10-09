import 'package:flutter/material.dart';

class HederButtonSection extends StatelessWidget {
  const HederButtonSection(
      {super.key,
      required this.buttonone,
      required this.buttontwo,
      required this.buttonthree});

  final Widget buttonone;
  final Widget buttontwo;
  final Widget buttonthree;



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonone,
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          buttontwo,
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          buttonthree,
        ],
      ),
    );
  }
}
