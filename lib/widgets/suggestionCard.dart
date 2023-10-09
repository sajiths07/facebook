import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Stack(
        children: [
          suggestionImage(),
        ],
      ),
    );
  }
}

Widget suggestionDetails() {
  return Positioned(
    bottom: 0,
    right: 0,
    left: 0,
    child: Container(
      height: 140,
      color: Colors.grey[200],
      child: Column(
        children: [
          ListTile(
            title: Text("SANJU"),
            subtitle: Text('4 Mutual Frends'),
          ),
          Container(
            child: Row(
              children: [
                iconButton(
                    buttonAction: () {
                      print("Request To Frend");
                    },
                    buttonIcon: Icons.add_moderator,
                    buttonColor: Colors.blue,
                    buttonTextColor: Colors.white,
                    buttonIconColor: Colors.white,
                    buttonText: "Add Friend")
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget iconButton({
  required void Function() buttonAction,
  required IconData buttonIcon,
  required Color buttonColor,
  required Color buttonTextColor,
  required Color buttonIconColor,
  required String buttonText,
}) {
  return TextButton.icon(

      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      label: Text(
        buttonText,
        style: TextStyle(
          color: buttonTextColor,
        ),
      ),
    onPressed: buttonAction,
  );
}

Widget suggestionImage() {
  return Positioned(
    top: 0,
    left: 0,
    right: 0,
    child: ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      child: Image.asset(
        p,
        height: 250,
        fit: BoxFit.cover,
      ),
    ),
  );
}
