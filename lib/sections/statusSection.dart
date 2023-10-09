import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSections extends StatelessWidget {
  const StatusSections({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:Avatar(displayimage: dq,displaystatus: false,),
      title: TextField(
        decoration: InputDecoration(
          hintText: "what's on your mind?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
