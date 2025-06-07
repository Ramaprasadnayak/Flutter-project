import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:storybuddy/homepage.dart';

class RewardPage extends StatefulWidget {
  const RewardPage({super.key});
  @override
  RewardPageState createState() => RewardPageState();
}

class RewardPageState extends State<RewardPage> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 4));
    _confettiController.play();
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        title: Text("You Did It!"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
          child:Column(
            children: [
              SizedBox(height: 60),
              Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.emoji_events, size: 100, color: Colors.amber[700]),
                      SizedBox(height: 20),
                      Text(
                        "Congratulations!",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown[800],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "You Completed the Quiz!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  ConfettiWidget(
                    confettiController: _confettiController,
                    blastDirectionality: BlastDirectionality.explosive,
                    shouldLoop: false,
                    numberOfParticles: 30,
                    gravity: 0.3,
                    colors: [
                      Colors.red,
                      Colors.blue,
                      Colors.green,
                      Colors.orange,
                      Colors.purple
                    ],
                  ),
                  SizedBox(height: 90)
                ],
              ),
              SizedBox(height: 160),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              }, child: Text("go to home page..")
              )
            ],
          ),
      ),
    );
  }
}
