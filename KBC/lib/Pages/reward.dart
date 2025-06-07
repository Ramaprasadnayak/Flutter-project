import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class Rewards extends StatefulWidget{
  final int val;
  const Rewards(this.val,{super.key});
  @override
  Rewards2 createState()=>Rewards2();
  
}

class Rewards2 extends State<Rewards>{
  bool showSurprise = false;
  late ConfettiController _confettiController;
  final List<String> money=["₹1000","₹2000","₹3000","₹5000","₹10000","₹100000","₹500000","₹1000000"];
  @override
  void initState() {
    super.initState();
    _confettiController =ConfettiController(duration: const Duration(seconds: 3));
    handle();
  }
  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }
  void handle(){
    if(widget.val==8){
      setState(() {
      showSurprise = true;
      _confettiController.play();
    });
    }
  }
  @override
  Widget build(BuildContext context) {
    double wid=250;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 39, 12, 66),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("<< Back")),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Container(
              width: 400,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 13, 195, 250),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 45, 30, 30)
                  )
                ]
              ),
              child: Center(
                child: Text("Your Earning...",style: TextStyle(color: Color.fromARGB(255, 35, 31, 31),fontWeight: FontWeight.bold))
                )
              ),
          ),
          Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(height:10),
          Center(
            child:Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...List.generate(widget.val, (index)=> Column(
                  children: [
                    Container(
                          width:wid,
                          height:50,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 73, 46, 192)),
                          child:Center(
                          child: Text(money[index],style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 208, 208, 208)))
                    )
                    ),
                    SizedBox(height: 10)
                  ],
                )
            ),
              ],
            )
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: _confettiController,
              blastDirection: 3.14 / 2,
              maxBlastForce: 10,
              minBlastForce: 5,
              emissionFrequency: 0.05,
              numberOfParticles: 30,
              gravity: 0.3,
            ),
          ),
        ],
      ), 
          ],
        )
      )
    );
  }
}