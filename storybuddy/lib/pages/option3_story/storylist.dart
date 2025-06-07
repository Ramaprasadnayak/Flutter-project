import 'package:flutter/material.dart';
import './stories option/storycard1.dart';
import './stories option/storycard2.dart';
class StoryListScreen extends StatelessWidget {
  final String ageRange;

  const StoryListScreen({super.key, required this.ageRange});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stories for Age $ageRange'),backgroundColor: Colors.pinkAccent),
      body: Stack(
        children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pinkAccent,Colors.purpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft
            )
          ),
        ), ListView(
        children: [
          StoryCard1(title: 'The Jwel of Hampi', moral: 'Curiosity, courage, and cleverness can uncover great truths — even when youre small'),
          StoryCard2(title: 'Rani Laxmibai’s Bravery', moral: 'bravery in adversity'),
        ],
      ),
        ]
      )
    );
  }
}
