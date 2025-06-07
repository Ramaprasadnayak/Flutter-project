import 'package:flutter/material.dart';
import 'package:storybuddy/audio.dart';
import 'package:storybuddy/pages/option1_story/picturetap/pic_task1.dart';

class StoryDetailScreen1 extends StatelessWidget {
  final String title;
  final String storyText;
  final String moral;
  final String story='''🌿 The Story:
Once upon a time, a great king named Ashoka walked through a green forest. He loved animals and wanted everyone to be happy.

Suddenly, he heard a loud ROAR! 🦁 A big lion sat under a tree, licking his paws. The lion’s tummy rumbled—he was so hungry he couldn’t even hunt!

King Ashoka had a little pot of golden honey with him. He could have eaten it all himself… but he didn’t! Instead, he poured the sticky honey on a flat rock near the lion.

"Here, friend lion," said Ashoka. "This is sweet and will give you energy!"

The lion licked the honey (SLURP! SLURP!) and wagged his tail like a happy puppy! 🐾 Soon, birds, monkeys, and even ants came to taste the honey too. Ashoka laughed and shared the last drops with them.''';

  const StoryDetailScreen1({
    super.key,
    required this.title,
    required this.storyText,
    required this.moral,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),backgroundColor: Colors.amber),
      body: Stack(
        children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.amberAccent,Colors.pinkAccent],
              begin: Alignment.topRight,
              end:Alignment.bottomLeft
            )
          ),
        ),
        Padding(
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
        ],
      )
    );
  }
}
