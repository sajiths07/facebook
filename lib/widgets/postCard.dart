import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:flutter/material.dart';
import 'package:facebook/sections/headerButtonSection.dart';

import 'headerButton.dart';

class PostCard extends StatelessWidget {
  const PostCard(
      {super.key,
      required this.avatar,
      required this.name,
      required this.publishedAt,
      required this.postTitle,
      required this.postImage,
      this.showBlueTick = false,
      required this.likeCount,
      required this.shareCount,
      required this.commentCount});

  final String avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            color: Colors.grey[300],
            thickness: 1,
          ),
          HederButtonSection(
            buttonone: headerButton(
                buttonText: 'Like',
                buttonIcon: Icons.thumb_up,
                buttonAction: () {
                  print("Like This Post!");
                },
                buttonColor: Colors.grey[700]),
            buttontwo: headerButton(
                buttonText: 'Comment',
                buttonIcon: Icons.message_outlined,
                buttonAction: () {
                  print("Comment On This Post!");
                },
                buttonColor: Colors.grey[700]),
            buttonthree: headerButton(
                buttonText: 'Share',
                buttonIcon: Icons.share,
                buttonAction: () {
                  print("Like This Post!");
                },
                buttonColor: Colors.grey[700]),
          ),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Comments"),
                SizedBox(
                  width: 10,
                ),
                displayText(label: shareCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Shares"),
                SizedBox(
                  width: 10,
                ),
                Avatar(
                  displayimage: avatar,
                  displaystatus: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                    onPressed: () {
                      print("drope Down Button!!");
                    },
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey[700],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget titleSection() {
    return postTitle != null && postTitle != ''
        ? Container(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 5,
            ),
            child: Text(
              postTitle == null ? "" : postTitle,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          )
        : SizedBox();
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(
        bottom: 5,
        top: 5,
      ),
      child: Image.asset(postImage),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displayimage: avatar,
        displaystatus: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(width: 10),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? "" : publishedAt),
          SizedBox(width: 10),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
