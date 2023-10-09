import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          Container(
            padding: EdgeInsets.only(left: 5,right: 5),
            child: OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                print("Create A chat Room");
              },
              icon: Icon(
                Icons.video_call,
                color: Colors.purple,
              ),
              label: Text(
                "Create \n Room",
                style: TextStyle(color: Colors.blue),

              ),
            ),
          ),
          Avatar(displayimage: dq,displaystatus: true,),
          Avatar(displayimage: p,displaystatus: true,),
          Avatar(displayimage: lal,displaystatus: true,),
          Avatar(displayimage: f,displaystatus: true,),
          Avatar(displayimage: d,displaystatus: true,),
          Avatar(displayimage: dq,displaystatus: true,),
          Avatar(displayimage: p,displaystatus: true,),
          Avatar(displayimage: lal,displaystatus: true,),
          Avatar(displayimage: f,displaystatus: true,),
          Avatar(displayimage: d,displaystatus: true,),
        ],
      ),
    );
  }
}
