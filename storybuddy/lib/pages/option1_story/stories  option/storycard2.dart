import 'package:flutter/material.dart';
import '../storydetail2.dart';
class StoryCard2 extends StatelessWidget {
  final String title;
  final String moral;
  const StoryCard2({super.key, required this.title, required this.moral});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('Moral: $moral'),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) => StoryDetailScreen2(title: title,storyText: '''Title: Timmy the Tiny Turtle

Once upon a time, in a big blue pond, lived a tiny turtle named Timmy. Timmy was the smallest turtle in the pond, but he had the biggest heart!

Every morning, Timmy would say hello to all his friends. "Good morning, Froggy!" he said. "Hello, Ducky!" he waved.

But one day, Timmy saw a little ladybug stuck on a leaf in the water. "Oh no! She might fall!" Timmy said.

So, Timmy swam and swam with his tiny legs, splash splash splash! He reached the leaf and gently helped the ladybug climb on his back.

"Thank you, Timmy!" said the ladybug. "You are very kind."

From that day on, everyone in the pond called Timmy their hero.

Even though he was little, he did something big!'''
,moral: moral,
      ),
    ),
  );
},

      ),
    );
  }
}
