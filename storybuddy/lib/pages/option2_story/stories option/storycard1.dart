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
        Navigator.push(context,MaterialPageRoute(builder: (context) => StoryDetailScreen(title: title,storyText: '''Zara and the Rainbow Tree

Once in a colorful village called Sunnyville, there lived a curious girl named Zara. She loved to explore, ask questions, and dream about magical things.

One morning, Zara found an old map inside her grandma’s book. The map showed a hidden place in the forest with something called… the Rainbow Tree!

Zara was excited! “I must find it!” she said. She packed a sandwich, a bottle of water, and her teddy for company.

She walked past the tall trees, waved at squirrels, and followed butterflies. After a while, she came to a hill with a tiny glowing path. “This must be it!” she whispered.

As she climbed, the wind whispered, “Only kind hearts can find the tree.” Zara helped a baby bird back into its nest and gave her sandwich to a hungry rabbit. The path sparkled brighter with every kind thing she did!

Finally, she reached the top—and there it was! A tall, glowing tree with leaves of every color. Red, blue, green, purple—it shimmered like a rainbow in the sunlight.

Zara touched a leaf, and the tree whispered, “You have a kind heart, brave explorer. Make a wish.”

Zara smiled and wished for happiness for all the children in the world.

The wind danced. The leaves swirled. And the Rainbow Tree glowed even brighter.

From that day on, whenever someone was kind in Sunnyville, the Rainbow Tree would shine, reminding everyone that kindness makes magic real.'''
,moral: moral,
      ),
    ),
  );
},

      ),
    );
  }
}
