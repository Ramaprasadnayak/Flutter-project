import 'package:flutter/material.dart';
import 'package:storybuddy/audio.dart';
import 'package:storybuddy/pages/option3_story/puzzle_set/puzzle1.dart';
class StoryDetailScreen1 extends StatelessWidget {
  final String title;
  final String storyText;
  final String moral;
  final String story='''🏰 "The Jewel of Hampi"
An adventure set in ancient South India

Chapter 1: The Lost Coin
Nine-year-old Meera loved running through the bustling bazaars of Hampi, the capital of the mighty Vijayanagara Empire. Her mother sold jasmine garlands to temple-goers, while her father worked at the royal library.

One evening, while helping clean the steps near the Virupaksha Temple, Meera spotted something shiny half-buried in the dust.

She dug it out and gasped. It was a strange coin, heavier than normal, with a ruby in its center and an engraving of a lion with wings.

“This isn’t an ordinary coin,” whispered her father when she showed him. “This is from the Royal Vault of Forgotten Treasures. And it’s been missing for centuries!”

Chapter 2: The Secret Door
The next day, a mysterious man in black robes asked about the coin in the market. He claimed to be a “coin collector,” but Meera noticed he never blinked and kept following her.

Scared, she hid the coin in her lunch tiffin and raced to the Queen’s Bath ruins, where her father once told her stories of secret royal tunnels.

She pressed the coin into a lion-shaped carving on the old wall — and CLICK! — the stone slid open, revealing a narrow staircase.

“Just like in the stories…” Meera whispered.

Chapter 3: The Labyrinth Below
Torch in hand, Meera stepped into the ancient tunnels. She saw old murals, forgotten inscriptions, and statues covered in vines. Bats flew overhead, but Meera was brave.

At the end of one corridor, she found a locked chest — but it had a hole shaped like her coin.

She placed it in and turned.

Clunk!

The chest opened to reveal an ancient map, golden anklets, and a scroll that read:

“To the one who finds this — you are now keeper of the secrets of the Vijayanagara kings.”

Chapter 4: The Black-Robed Thief
Suddenly — footsteps! The man in black robes appeared.

“You should’ve left it where you found it,” he hissed. “That treasure belongs to me!”

But Meera was clever. She blew out her torch and slipped behind a statue.

Then — THWACK! — she pushed over a crumbling stone wheel, blocking the thief in the tunnel as she escaped with the scroll and map.

Epilogue: Meera, Keeper of the Kings
The queen’s advisors heard her story and declared Meera the Royal Finder of Forgotten Things. She was allowed to study in the palace school and even explore the ruins with guards.

Every full moon, she’d hold the ruby coin, wondering where the next tunnel or treasure would lead.

Because she knew… this was just the beginning.''';

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
                    MaterialPageRoute(builder: (context)=>PuzzlePage())
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
