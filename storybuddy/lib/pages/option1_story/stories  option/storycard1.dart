import 'package:flutter/material.dart';
import '../storydetail1.dart';
class StoryCard1 extends StatelessWidget {
  final String title;
  final String moral;

  const StoryCard1({super.key, required this.title, required this.moral});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('Moral: $moral'),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) => StoryDetailScreen1(title: title,storyText: '''🌿 The Story:
Once upon a time, a great king named Ashoka walked through a green forest. He loved animals and wanted everyone to be happy.

Suddenly, he heard a loud ROAR! 🦁 A big lion sat under a tree, licking his paws. The lion’s tummy rumbled—he was so hungry he couldn’t even hunt!

King Ashoka had a little pot of golden honey with him. He could have eaten it all himself… but he didn’t! Instead, he poured the sticky honey on a flat rock near the lion.

"Here, friend lion," said Ashoka. "This is sweet and will give you energy!"

The lion licked the honey (SLURP! SLURP!) and wagged his tail like a happy puppy! 🐾 Soon, birds, monkeys, and even ants came to taste the honey too. Ashoka laughed and shared the last drops with them.'''
,moral: moral,
      ),
    ),
  );
},

      ),
    );
  }
}
