import 'package:flutter/material.dart';
import 'package:storybuddy/audio.dart';
import 'package:storybuddy/pages/option4_story/quiz1/question1.dart';
class StoryDetailScreen1 extends StatelessWidget {
  final String title;
  final String storyText;
  final String moral;
  final String story='''🏳️ A Child in the Freedom Struggle
Moral: Standing for Justice
Setting:
India, 1930s – during the height of the freedom movement.

The Story
Twelve-year-old Aarav lived in a small village near Sabarmati. His father worked as a schoolteacher, and his mother wove khadi cloth on her spinning wheel. Life was peaceful, but Aarav could sense the tension in the air. British officers often came to their village, shouting orders and punishing anyone who spoke out.

One evening, Aarav overheard a secret meeting at the village library. A group of elders whispered about a non-violent protest to stop the British from taking away sacks of rice meant for poor families. Aarav’s father was among them.

“You're just a child, Aarav,” his father said gently when Aarav offered to help. “This is dangerous.”

But Aarav wasn’t scared. He believed injustice shouldn’t be ignored — no matter your age.

The Protest
On the day of the protest, villagers gathered in silence near the railway station. The British soldiers shouted at them to leave. Aarav stood with his school bag in hand, holding a placard made of cardboard:
🪧 "Food for the Hungry, Not the Rulers."

A soldier stormed up to him.

“You! Move aside, boy!” he growled.

Aarav’s hands trembled, but he stood firm.

“This rice is ours. It belongs to the people who grew it,” he said clearly, eyes locked with the officer’s.

The officer raised his stick — but then something surprising happened.

The crowd stepped forward.

One by one, men and women stood behind Aarav.

“We stand with the boy,” said a woman.

“We all do,” said another.

Faced with the silent wall of villagers, the officer froze. He turned and barked, “Retreat!” to his men.

The Aftermath
That evening, Aarav’s story spread across the village — and soon, to nearby towns. He was invited to speak at a small local gathering. People began to believe that if a child could stand up for justice, so could they.

Years later, when India finally gained its independence, Aarav was no longer a boy — but his spirit remained the same.

He became a teacher, just like his father, teaching children not just math or history, but courage, truth, and justice.

🧭 Moral: Standing for Justice
Even the smallest voice can challenge the biggest injustice. You’re never too young to do what’s right.
''';
  
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
                    MaterialPageRoute(builder: (context)=>Quiz1())
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
