import 'package:flutter/material.dart';
import 'stories  option/storycard1.dart';
import 'stories  option/storycard2.dart';
class StoryListScreen extends StatelessWidget {
  final String ageRange;
  const StoryListScreen({super.key, required this.ageRange});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stories for Age $ageRange'),automaticallyImplyLeading: true,backgroundColor: Colors.pinkAccent),
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
        ),
        Center(
          child:ListView(
            children: [
              StoryCard1(title: 'Ashoka’s Lion – A Sharing Story', moral: 'sharing is caring...'),
              StoryCard2(title: 'Title: Timmy the Tiny Turtle', moral: 'You don’t have to be big to be kind and brave.'),
            ],
          ),
        )
        ],
      )
    );
  }
}
