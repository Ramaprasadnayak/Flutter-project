import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Speakup extends StatefulWidget {
  final String story;
  const Speakup(this.story,{super.key});
  @override
  StoryTTSState createState() => StoryTTSState();
}

class StoryTTSState extends State<Speakup> {
  final FlutterTts tts = FlutterTts();
  @override
  void initState() {
    super.initState();
    _setupTts();
  }

  Future<void> _setupTts() async {
    await tts.setLanguage("en-IN");
    await tts.setPitch(1.0);
    await tts.setSpeechRate(0.5);
    List<dynamic> voices = await tts.getVoices;
    for (var voice in voices) {
      if (voice.toString().contains("en-in")) {
        await tts.setVoice({"name": voice["name"], "locale": voice["locale"]});
        break;
      }
    }
  }

  void _speak() async {
    await tts.speak(widget.story);
  }

  void _stop() async {
    await tts.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Story Narrator'),backgroundColor: Colors.amber),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.yellowAccent,Colors.redAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
            )
        ),
        child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(child: Text(widget.story)), 
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: _speak, child: Text("Speak")),
                SizedBox(width: 10),
                ElevatedButton(onPressed: _stop, child: Text("Stop")),
              ],
            )
          ],
        ),
      ),
      )
    );
  }
}
