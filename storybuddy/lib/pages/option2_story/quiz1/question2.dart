import 'package:flutter/material.dart';
import 'package:storybuddy/pages/option2_story/quiz1/question3.dart';
import 'package:storybuddy/pages/option2_story/quiz1/timer.dart';


class Quiz2 extends StatefulWidget{
  const Quiz2({super.key});
  @override
  Quesion1 createState() =>Quesion1();
}


class Quesion1 extends State<Quiz2>{
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
      appBar: AppBar(title: Text("Question 2 :",style: TextStyle(color: Color.fromARGB(255, 32, 29, 29)),), backgroundColor: Color.fromARGB(255, 207, 107, 197)),
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
                child:  Text("What made the glowing path brighter as Zara walked?",style: TextStyle(color: const Color.fromARGB(255, 33, 29, 29)))
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
                    value: "Her_flashlight",
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
                    child: Text("A. Her flashlight",style: TextStyle(color: Color.fromARGB(255, 33, 29, 29)),)
                    )
                  ),
                  
                  SizedBox(width: 20),
                  //option2
                  SizedBox(
                  width: 180,
                  height: 50,
                  child: RadioMenuButton(
                    value: "Her_kind_actions",
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
                    child: Text("B. Her kind actions",style: TextStyle(color: Color.fromARGB(255, 33, 29, 29)),)
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
                    value: "Her_teddy_bear",
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
                    child: Text("C. Her teddy bear",style: TextStyle(color: Color.fromARGB(255, 33, 29, 29)))
                    ),
                  ),
                  
                  SizedBox(width: 20),
                  //option 5
                  SizedBox(
                  width: 180,
                  height: 50,
                  child: RadioMenuButton(
                    value: "magicbook",
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
                    child: Text("D.The magic book",style: TextStyle(color: Color.fromARGB(255, 33, 29, 29)),)
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
                if(selected=="Her_kind_actions"){
                  bcolor2=Colors.green;
                  shownext=true;
                }
                else if(selected=="Her_flashlight"){
                  bcolor1=const Color.fromARGB(255, 198, 43, 31);
                  shownext=false;
                }
                else if(selected=="Her_teddy_bear"){
                  bcolor3= const Color.fromARGB(255, 198, 43, 31);
                  shownext=false;
                }
                else if(selected=="magicbook"){
                  bcolor4=const Color.fromARGB(255, 198, 43, 31);
                  shownext=false;
                }
              });
            },
            style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 201, 28, 181)),
            child: Text("Submit",style:TextStyle(color:  Color.fromARGB(255, 45, 44, 41)))
            ),
            SizedBox(height:50),
            Row(
              children: [
                SizedBox(width: 290),
                ElevatedButton(
                  onPressed: shownext?(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Quiz3()));
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