import 'package:flutter/material.dart';
import 'package:storybuddy/audio.dart';
import 'package:storybuddy/pages/option1_story/picturetap/pic_task1.dart';
class StoryDetailScreen2 extends StatelessWidget {
  final String title;
  final String storyText;
  final String moral;
  final String story='''Title: Timmy the Tiny Turtle

Once upon a time, in a big blue pond, lived a tiny turtle named Timmy. Timmy was the smallest turtle in the pond, but he had the biggest heart!

Every morning, Timmy would say hello to all his friends. "Good morning, Froggy!" he said. "Hello, Ducky!" he waved.

But one day, Timmy saw a little ladybug stuck on a leaf in the water. "Oh no! She might fall!" Timmy said.

So, Timmy swam and swam with his tiny legs, splash splash splash! He reached the leaf and gently helped the ladybug climb on his back.

"Thank you, Timmy!" said the ladybug. "You are very kind."

From that day on, everyone in the pond called Timmy their hero.

Even though he was little, he did something big!''';

  const StoryDetailScreen2({
    super.key,
    required this.title,
    required this.storyText,
    required this.moral,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),backgroundColor: Colors.amber),
      body:Stack(
        children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.amberAccent,Colors.pinkAccent],
              begin: Alignment.topRight,
              end:Alignment.bottomLeft
            )
          ),
        ), Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(storyText, style: TextStyle(fontSize: 16)),
              SizedBox(height: 20),
              Text("Moral: $moral", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Row(
                children: [
                  ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>PictureTapTask1())
                    );
                },
                child: Text('Take a Task / Quiz'),
              ),
              SizedBox(width:30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>Speakup(story))
                    );
                },
                child: Text('audio'),
              ),
                ],
              )
            ],
          ),
        ),
      ),
        ]
      )
    );
  }
}
