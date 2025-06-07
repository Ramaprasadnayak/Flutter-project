import 'dart:async';
import 'package:flutter/material.dart';


class Timmer extends StatefulWidget{
  final void Function(VoidCallback)? onTimerStopRequest;
  const Timmer({super.key, this.onTimerStopRequest});

  @override
  Timmercount createState() =>Timmercount();
}

class Timmercount extends State<Timmer>{
  var bcolor5=Color.fromARGB(255, 228, 198, 229);
  var bcolor6= Color.fromARGB(255, 19, 17, 17);
  int second=30;
  Timer? _timer;
  @override
  void initState(){
    super.initState();
    startcountdown();
    if (widget.onTimerStopRequest != null) {
      widget.onTimerStopRequest!(stopTimer);
    }
  }
  void stopTimer() {
    _timer?.cancel();
  }

  void startcountdown(){
    _timer=Timer.periodic(Duration(seconds: 1), (timer){
      if(second>=0){
        setState(() {
        second--;
        });
        if(second<=10){
            bcolor5=const Color.fromARGB(255, 201, 58, 58);
            bcolor6=Color.fromARGB(255, 191, 205, 58);
        }
      }
      else{
        _timer?.cancel();
      }
    });
  }
  @override
  void dispose() {
    _timer?.cancel(); 
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height:40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: bcolor5
      ),
      child: Center(
        child: Text("$second",style: TextStyle(color:bcolor6),),
      ),
    );
  }
}

