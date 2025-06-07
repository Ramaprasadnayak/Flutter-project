import 'package:flutter/material.dart';
import 'package:storybuddy/pages/option2_story/quiz1/reward_1.dart';
import 'package:storybuddy/pages/option2_story/quiz1/timer.dart';


class Quiz3 extends StatefulWidget{
  const Quiz3({super.key});
  @override
  Quesion1 createState() =>Quesion1();
}


class Quesion1 extends State<Quiz3>{
  String? selected="None Selected";  
  var bcolor1=Color.fromARGB(255, 228, 198, 229);
  var bcolor2= Color.fromARGB(255, 228, 198, 229);
  var bcolor3=Color.fromARGB(255, 228, 198, 229);
  var bcolor4=Color.fromARGB(255, 228, 198, 229);
  bool shownext=false;
  bool showradio=true;
  VoidCallback? stopTimerCallback;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 107, 197),
      appBar: AppBar(title: Text("Question 3 :",style: TextStyle(color: Color.fromARGB(255, 32, 29, 29)),),backgroundColor: Color.fromARGB(255, 207, 107, 197),),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 150),
            Timmer(
              onTimerStopRequest: (stopFn) {
              stopTimerCallback = stopFn;
              },
            ),
            SizedBox(height: 5),
            Container(
              width: 380,
              height:50,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30),
                boxShadow:[
                  BoxShadow(color: Color.fromARGB(255, 17, 9, 9))
                  ],
                color: Color.fromARGB(255, 228, 198, 229)
              ),
              child:Center(
                child:  Text("What quality did Aarav show during the protest?",style: TextStyle(color: const Color.fromARGB(255, 33, 29, 29)))
              )
            ),
            Row(
              children: [
                SizedBox(height: 70,width: 5),
                //option 1
                SizedBox(
                  width: 180,
                  height: 50,
                  child: RadioMenuButton(
                    value: "Anger",
                    groupValue: selected, 
                    onChanged: showradio?
                    (selectedvalue){
                      setState(() {
                        selected=selectedvalue as String;
                      });
                    }:null,
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(bcolor1)
                    ),
                    child: Text("A. Anger",style: TextStyle(color: Color.fromARGB(255, 33, 29, 29)),)
                    )
                  ),
                  
                  SizedBox(width: 20),
                  //option2
                  SizedBox(
                  width: 180,
                  height: 50,
                  child: RadioMenuButton(
                    value: "Fear",
                    groupValue: selected, 
                    onChanged:showradio?
                    (selectedvalue){
                      setState(() {
                        selected=selectedvalue as String;
                      });
                    }:null,
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(bcolor2)
                    ),
                    child: Text("B. Fear",style: TextStyle(color: Color.fromARGB(255, 33, 29, 29)),)
                    )
                  ),
                  
              ],
            ),
            Row(
              children: [
                SizedBox(width: 5,height:20),
                //option 3
                SizedBox(
                  width: 180,
                  height: 50,
                  child: RadioMenuButton(
                    value: "Greed",
                    groupValue: selected, 
                    onChanged: showradio?
                    (selectedvalue){
                      setState(() {
                        selected=selectedvalue as String;
                      });
                    }:null,
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(bcolor3)
                    ),
                    child: Text("C. Greed",style: TextStyle(color: Color.fromARGB(255, 33, 29, 29)))
                    ),
                  ),
                  
                  SizedBox(width: 20),
                  //option 5
                  SizedBox(
                  width: 180,
                  height: 50,
                  child: RadioMenuButton(
                    value: "Courage",
                    groupValue: selected, 
                    onChanged: showradio?
                    (selectedvalue){
                      setState(() {
                        selected=selectedvalue as String;
                      });
                    }:null,
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(bcolor4)
                    ),
                    child: Text("D. Courage",style: TextStyle(color: Color.fromARGB(255, 33, 29, 29)),)
                    )
                  )
              ]
            ),
            SizedBox(height: 40),
            ElevatedButton(onPressed: (){
              setState(() {
                showradio=false;
                bcolor1 = bcolor2 = bcolor3 = bcolor4 = Color.fromARGB(255, 228, 198, 229);
                if (stopTimerCallback != null) {
                    stopTimerCallback!();
                }
                if(selected=="Courage"){
                  bcolor4=Colors.green;
                  shownext=true;
                }
                else if(selected=="Anger"){
                  bcolor1=const Color.fromARGB(255, 198, 43, 31);
                  shownext=false;
                }
                else if(selected=="Fear"){
                  bcolor2= const Color.fromARGB(255, 198, 43, 31);
                  shownext=false;
                }
                else if(selected=="Greed"){
                  bcolor3=const Color.fromARGB(255, 198, 43, 31);
                  shownext=false;
                }
              });
            },
            style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 184, 5, 190)),
            child: Text("Submit",style:TextStyle(color:  Color.fromARGB(255, 45, 44, 41)))
            ),
            SizedBox(height:50),
            Row(
              children: [
                SizedBox(width: 290),
                ElevatedButton(
                  onPressed: shownext?(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RewardPage()));
                  }:null,
                  style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 184, 5, 190)),
                  child: Text("Next..",style: TextStyle(color: Color.fromARGB(255, 3, 5, 3)))
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}