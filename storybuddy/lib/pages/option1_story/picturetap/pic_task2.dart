import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:storybuddy/homepage.dart';

class PictureTapTask2 extends StatefulWidget {
  const PictureTapTask2({super.key});
  @override
  PictureTapTaskState createState() => PictureTapTaskState();
}

class PictureTapTaskState extends State<PictureTapTask2> {
  String message = "Tap on the picture of Ashoka chakra!"; 
  final ConfettiController _confettiController = ConfettiController(duration: const Duration(seconds: 10));
  final List<String> imagePaths = [
    'assets/image4.jpg',
    'assets/image5.jpg',
    'assets/image6.jpg'
  ];
  final int correctIndex = 1;
  void onImageTapped(int index) {
    setState(() {
      if (index == correctIndex) {
        message = "Correct! You tapped the right picture.";
        _confettiController.play(); 
      } else {
        message = "Oops! Try again.";
        _confettiController.stop(); 
      }
    });
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Picture Tap Task"),
        automaticallyImplyLeading: true, 
        backgroundColor: Colors.purpleAccent,
      ),
      backgroundColor: Colors.blueAccent, 
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purpleAccent, Colors.blueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          ConfettiWidget(
            confettiController: _confettiController,
            blastDirectionality: BlastDirectionality.explosive, 
            shouldLoop: false,
            colors: [Colors.red, Colors.green, Colors.blue, Colors.yellow],
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                SizedBox(height: 130),
                Text(
                  message,
                  style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(imagePaths.length, (index) {
                    return GestureDetector(
                      onTap: () => onImageTapped(index),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2, color: Colors.black),
                        ),
                        child: Image.asset(imagePaths[index], fit: BoxFit.cover),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 40),
                ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 210, 49, 202)), child: Text("go to home page..",style: TextStyle(color: Colors.black)))
              ],
            ),
        ],
      ),
    );
  }
}
