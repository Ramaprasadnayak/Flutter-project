import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:storybuddy/pages/option1_story/picturetap/pic_task2.dart';

class PictureTapTask1 extends StatefulWidget {
  const PictureTapTask1({super.key});
  @override
  PictureTapTaskState createState() => PictureTapTaskState();
}

class PictureTapTaskState extends State<PictureTapTask1> {
  String message = "Tap on the picture of Ashoka!"; 
  final ConfettiController _confettiController = ConfettiController(duration: const Duration(seconds: 10));
  final List<String> imagePaths = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg'
  ];
  final int correctIndex = 0;
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
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>PictureTapTask2()
                    ));
                  },style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 210, 49, 202)), 
                  child: Text("Next..",style: TextStyle(color:Color.fromARGB(255, 5, 5, 5)))
                  )
              ],
            ),
          ],
      ),
    );
  }
}
