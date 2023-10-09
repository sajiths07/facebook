import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            story: dq,
            labelText: 'Add To Story',
            avatar: dq,
            createStoryStatus: true,
          ),
          StoryCard(
            story: p1,
            labelText: 'Mohan Lal',
            avatar: lal,
            displayBorder: true,
          ),
          StoryCard(
            story: p2,
            labelText: 'Mammootty',
            avatar: m,
            displayBorder: true,
          ),
          StoryCard(
            story: p3,
            labelText: 'Dulquer',
            avatar: dulquer,
            displayBorder: true,
          ),
          StoryCard(
            story: p5,
            labelText: 'Dileep',
            avatar: d,
            displayBorder: true,
          ),
          StoryCard(
            story: p6,
            labelText: 'With Love',
            avatar: pranav,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
