import 'package:flutter/material.dart';
import 'pages/option1.dart';
import 'pages/option2.dart';
import 'pages/option3.dart';
import 'pages/option4.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Story Buddy"),backgroundColor: Colors.pinkAccent),
      body: Stack(
        children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[Colors.pinkAccent,const Color.fromARGB(255, 215, 205, 205)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight 
            )
          ),
        ),
        SingleChildScrollView(
          child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 60),
              Text('Select Age Group', style: TextStyle(fontSize: 24)),
              AgeGroupCard1(ageRange: '3–4', label: 'Fables with Fun Tasks'),
              AgeGroupCard2(ageRange: '5–6', label: 'Real-Life Stories + Quizzes'),
              AgeGroupCard3(ageRange: '7–9', label: 'Historical Adventures'),
              AgeGroupCard4(ageRange: '10+', label: 'Deep Fiction + Decisions'),
            ],
          ),
        ),
      ),
      ],
    )
  );
}
}