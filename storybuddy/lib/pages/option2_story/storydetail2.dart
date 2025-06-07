import 'package:flutter/material.dart';
import 'package:storybuddy/audio.dart';
import 'package:storybuddy/pages/option2_story/quiz2/question1.dart';
class StoryDetailScreen extends StatelessWidget {
  final String title;
  final String storyText;
  final String moral;
  final String story='''Gandhi and the Goat

Once upon a time, in a small village in India, there lived a great man named Mahatma Gandhi. He was known for his kindness, simplicity, and love for all living things.

One day, a mother and her young son came to visit Gandhi. The boy had a big problem—he ate too much sugar! His mother had tried everything to stop him, but nothing worked. So, she brought him to Gandhi, hoping the wise man could help.

Gandhi listened carefully, then said, "Please come back in two weeks." The mother was surprised but agreed.

Two weeks later, they returned. Gandhi looked the boy in the eyes and said, "You must stop eating so much sugar. It is not good for you."

The boy nodded, but his mother was confused. "Bapu (father), why didn’t you say this two weeks ago?"

Gandhi smiled and replied, "Because two weeks ago, I was eating too much sugar! I had to stop myself first before I could ask your son to do the same."

The Lesson:
Gandhi believed that before telling others what to do, we must practice it ourselves. Just like how you wouldn’t trust someone who says, "Brush your teeth!" if they never brushed theirs!

And that’s the story of how Gandhi taught a boy—and himself—a sweet lesson!''';

  const StoryDetailScreen({
    super.key,
    required this.title,
    required this.storyText,
    required this.moral,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),backgroundColor:Colors.amber),
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
                    MaterialPageRoute(builder: (context)=>Quiz4())
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
