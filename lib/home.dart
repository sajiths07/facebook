import 'package:facebook/assets.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/sections/suggestionSection.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'sections/headerButtonSection.dart';
import 'package:facebook/widgets/headerButton.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print("Search screen appears!");
                }),
            CircularButton(
                buttonIcon: Icons.chat,
                buttonAction: () {
                  print("Messenger screen appears!");
                })
          ],
        ),
        body: ListView(
          children: [
            StatusSections(),
            thinDivider,
            HederButtonSection(
              buttonone: headerButton(
                  buttonText: 'Live',
                  buttonIcon: Icons.video_call,
                  buttonAction: () {
                    print("Go live!");
                  },
                  buttonColor: Colors.green),
              buttontwo: headerButton(
                  buttonText: 'Photo',
                  buttonIcon: Icons.photo_library,
                  buttonAction: () {
                    print("Take Photos!!");
                  },
                  buttonColor: Colors.purple),
              buttonthree: headerButton(
                  buttonText: 'Room',
                  buttonIcon: Icons.video_call,
                  buttonAction: () {
                    print("Create Rooms!");
                  },
                  buttonColor: Colors.red),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: lal,
              name: "Mohanlal",
              publishedAt: '5h',
              postTitle: 'Jawan!',
              postImage: p5,
              showBlueTick: true,
              likeCount: '10k',
              shareCount: '1k',
              commentCount: '1.5k',
            ),
            thickDivider,
            PostCard(
              avatar: pranav,
              name: "Pranav Mohanlal",
              publishedAt: '10m',
              postTitle: 'Crazzy car!',
              postImage: p2,
              showBlueTick: true,
              likeCount: '1m',
              shareCount: '100k',
              commentCount: '98k',
            ),
            thickDivider,
            PostCard(
              avatar: p,
              name: "Prithviraj Sukumaran",
              publishedAt: '1h',
              postTitle: '',
              postImage: p3,
              showBlueTick: true,
              likeCount: '1.9k',
              shareCount: '1k',
              commentCount: '8k',
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              avatar: f,
              name: "Fahad Fazil",
              publishedAt: '1d',
              postTitle: '',
              postImage: p1,
              showBlueTick: true,
              likeCount: '19k',
              shareCount: '5k',
              commentCount: '9k',
            ),
            thickDivider,
            PostCard(
              avatar: m,
              name: "Mamootty",
              publishedAt: '1d',
              postTitle: '',
              postImage: p6,
              showBlueTick: true,
              likeCount: '2.9m',
              shareCount: '192k',
              commentCount: '163k',
            ),
            thickDivider,
            PostCard(
              avatar: d,
              name: "Deleep ",
              publishedAt: '10h',
              postTitle: '',
              postImage: p4,
              showBlueTick: true,
              likeCount: '35k',
              shareCount: '10k',
              commentCount: '12k',
            ),

          ],
        ),
      ),
    );
  }
}
