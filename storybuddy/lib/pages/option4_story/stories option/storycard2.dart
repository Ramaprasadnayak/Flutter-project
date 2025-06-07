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
        Navigator.push(context,MaterialPageRoute(builder: (context) => StoryDetailScreen2(title: title,storyText: '''🌹 Nehru’s Rose
Moral: Kindness Matters

Setting:
India, 1950s – during Pandit Jawaharlal Nehru’s time as Prime Minister.

The Story
Every morning, little Riya walked past the red sandstone gates of the Prime Minister’s residence in Delhi. She didn’t live there, of course — her father was a gardener who worked in the Mughal gardens nearby. Riya loved flowers, especially roses, and she admired how Pandit Nehru always wore one tucked into his jacket pocket.

“Why does Nehru always wear a rose, Papa?” she once asked.

Her father smiled. “He says it reminds him of children — beautiful, delicate, full of promise.”

The Surprise Visit
One day, a big school from the city was invited to visit Chacha Nehru for Children’s Day. Riya’s school wasn’t invited — it was a small one in a poor neighborhood. But Riya still made a tiny paper rose with red crayon and glue. “I’ll give it to Chacha Nehru one day,” she whispered.

That afternoon, while helping her father in the garden, she saw a car stop at the gate.

To her surprise, Pandit Nehru himself stepped out — with his trademark smile and his rose pinned to his coat.

Riya’s heart raced. She hid behind a tree, clutching her paper rose.

An Unexpected Encounter
Nehru walked into the garden and noticed her.

“Hello there,” he said gently. “Are you the gardener’s daughter?”

Riya nodded shyly.

“What’s that in your hand?”

She held out the paper rose.

“I made this… for you, Chacha Nehru.”

He bent down, examined it carefully, and smiled warmly.

“This is the most beautiful rose I’ve received all day,” he said.

Then — to her astonishment — he removed the real rose from his coat and pinned the paper one in its place.

The Lesson
That small act didn’t make headlines. But it changed Riya’s life.

Years later, she became a teacher. In every class she taught, she told her students:

“Being powerful is one thing. But being kind — that’s what truly makes a person great.”

Because Riya had once seen a great man choose kindness over perfection — and it meant the world to a little girl with a crayon rose.

🧭 Moral: Kindness Matters
Even small gestures of kindness can leave a lasting impact — sometimes, more than we ever realize.'''
,moral: moral,
      ),
    ),
  );
},

      ),
    );
  }
}
