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
        Navigator.push(context,MaterialPageRoute(builder: (context) => StoryDetailScreen2(title: title,storyText: '''Rani Laxmibai’s Bravery
Chapter 1: The Kingdom in Danger
In the heart of Jhansi, there was a young queen named Rani Laxmibai, known far and wide for her courage, wisdom, and love for her people. She was no ordinary queen — she had learned the art of sword fighting, horse riding, and even strategizing like a true warrior.

One fateful day, the British East India Company began advancing toward Jhansi. The kingdom was in danger. The British soldiers had surrounded the fort, and the air was thick with tension.

Despite the fear that gripped many in the kingdom, Rani Laxmibai did not waver. She knew she had to protect her people at any cost.

Chapter 2: The Call to Arms
While the enemy forces gathered outside the walls of Jhansi, Rani Laxmibai stood on the fort’s ramparts, looking out at her soldiers. She had always led by example — whether it was fighting alongside the men or organizing the defense strategies.

"We fight for our home, for our children, for our freedom," she told her people. "Today, we stand united. Jhansi will never fall!"

Her voice rang out strong, and even the youngest soldiers felt their hearts swell with courage.

Chapter 3: The Battle of Jhansi
The battle began the next day. Rani Laxmibai, dressed in armor, riding her horse Badal, and holding a sword in her hand, led her forces. She fought fiercely, charging at the British soldiers with unmatched skill and bravery. Her horse leapt over barricades, and her sword struck down enemies as if it were an extension of herself.

But the battle was tough. The British soldiers were many, and the fort’s defenses were weakening. Even though Laxmibai fought valiantly, the enemy was too strong.

As the sun began to set, the queen ordered a retreat to save her people.

Chapter 4: The Escape and Legacy
The British forces had broken through the gates of Jhansi, but Rani Laxmibai did not give up. As the last of her soldiers retreated to safety, she made a bold decision. She would leave the fort, taking with her the most valuable treasures and, more importantly, the spirit of Jhansi.

On her trusted horse, Badal, Laxmibai galloped across the battlefield. Even as the British pursued her, she fought valiantly, turning back and striking them down one by one. With her determination, she managed to escape, ensuring that the fight for independence would continue.

Although Jhansi eventually fell, Rani Laxmibai’s bravery became a symbol of resistance. Her courage inspired countless others to fight for freedom.

Epilogue: The Heroine of India
To this day, Rani Laxmibai’s name is remembered with reverence and pride. Her life showed the world that bravery is not the absence of fear, but the strength to face it head-on.

Moral: "Bravery in adversity"
Even in the face of overwhelming odds, Rani Laxmibai stood strong. She didn’t give up on her kingdom or her people, and her courage in times of adversity became a beacon of hope for generations to come.'''
,moral: moral,
      ),
    ),
  );
},

      ),
    );
  }
}
