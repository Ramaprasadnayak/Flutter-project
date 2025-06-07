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
        Navigator.push(context,MaterialPageRoute(builder: (context) => StoryDetailScreen(title: title,storyText: '''Gandhi and the Goat

Once upon a time, in a small village in India, there lived a great man named Mahatma Gandhi. He was known for his kindness, simplicity, and love for all living things.

One day, a mother and her young son came to visit Gandhi. The boy had a big problem—he ate too much sugar! His mother had tried everything to stop him, but nothing worked. So, she brought him to Gandhi, hoping the wise man could help.

Gandhi listened carefully, then said, "Please come back in two weeks." The mother was surprised but agreed.

Two weeks later, they returned. Gandhi looked the boy in the eyes and said, "You must stop eating so much sugar. It is not good for you."

The boy nodded, but his mother was confused. "Bapu (father), why didn’t you say this two weeks ago?"

Gandhi smiled and replied, "Because two weeks ago, I was eating too much sugar! I had to stop myself first before I could ask your son to do the same."

The Lesson:
Gandhi believed that before telling others what to do, we must practice it ourselves. Just like how you wouldn’t trust someone who says, "Brush your teeth!" if they never brushed theirs!

And that’s the story of how Gandhi taught a boy—and himself—a sweet lesson!'''
,moral: moral,
      ),
    ),
  );
},

      ),
    );
  }
}
