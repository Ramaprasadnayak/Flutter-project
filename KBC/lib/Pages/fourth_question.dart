import 'package:flutter/material.dart';
import 'package:flutter_application_6/Pages/fifth_question.dart';
import 'package:flutter_application_6/Pages/reward.dart';
import 'package:flutter_application_6/Pages/timer.dart';
class Quesion4home extends StatefulWidget{
  const Quesion4home({super.key});
  @override
  Quesion4 createState() =>Quesion4();
}


class Quesion4 extends State<Quesion4home>{
  String? selected="None Selected";  
  var bcolor1=Color.fromARGB(255, 49, 56, 132);
  var bcolor2= Color.fromARGB(255, 49, 56, 132);
  var bcolor3=Color.fromARGB(255, 49, 56, 132);
  var bcolor4=Color.fromARGB(255, 49, 56, 132);
  bool shownext=false;
  bool showradio=true;
  VoidCallback? stopTimerCallback;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Question 4 :",style: TextStyle(color: Color.fromARGB(255, 242, 238, 238)),),backgroundColor:  Color.fromARGB(255, 29, 10, 86),),
      backgroundColor: Color.fromARGB(255, 39, 12, 66),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Rewards(3)));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 112, 46, 174)), 
              child: Text("View earnings >>",style: TextStyle(color: Color.fromARGB(255, 207, 194, 215)))
            ),
            SizedBox(height: 40),
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
                color: Color.fromARGB(255, 54, 62, 145)
              ),
              child:Center(
                child:  Text("First IPL player with 100 runs & 4+ wickets in a match?",style: TextStyle(color: const Color.fromARGB(255, 250, 249, 249)))
              )
            ),
            Row(
              children: [
                SizedBox(height: 70,width: 20),
                
                //option 1
                SizedBox(
                  width: 180,
                  height: 50,
                  child: RadioMenuButton(
                    value: "Shane_Watson",
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
                    child: Text("A. Shane Watson",style: TextStyle(color: Color.fromARGB(255, 255, 254, 254)),)
                    )
                  ),
                  
                  SizedBox(width: 20),
                  //option2
                  SizedBox(
                  width: 180,
                  height: 50,
                  child: RadioMenuButton(
                    value: "Ben_Stokes",
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
                    child: Text("B. Ben Stokes",style: TextStyle(color: Color.fromARGB(255, 255, 254, 254)),)
                    )
                  ),
                  
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20,height:20),
                //option 3
                SizedBox(
                  width: 180,
                  height: 50,
                  child: RadioMenuButton(
                    value: "Paul_Valthaty",
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
                    child: Text("C. Paul Valthaty",style: TextStyle(color: Color.fromARGB(255, 255, 254, 254)))
                    ),
                  ),
                  
                  SizedBox(width: 20),
                  //option 4
                  SizedBox(
                  width: 180,
                  height: 50,
                  child: RadioMenuButton(
                    value: "Yuvraj_Singh",
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
                    child: Text("D. Yuvraj Singh",style: TextStyle(color: Color.fromARGB(255, 255, 254, 254)),)
                    )
                  )
              ]
            ),
            SizedBox(height: 40),
            ElevatedButton(onPressed: (){
              setState(() {
                showradio=false;
                bcolor1 = bcolor2 = bcolor3 = bcolor4 = Color.fromARGB(255, 49, 56, 132);
                if (stopTimerCallback != null) {
                    stopTimerCallback!();
                }
                if(selected=="Paul_Valthaty"){
                  bcolor3=Colors.green;
                  shownext=true;
                }
                else if(selected=="Shane_Watson"){
                  bcolor1=const Color.fromARGB(255, 198, 43, 31);
                  shownext=false;
                }
                else if(selected=="Ben_Stokes"){
                  bcolor2= const Color.fromARGB(255, 198, 43, 31);
                  shownext=false;
                }
                else if(selected=="Yuvraj_Singh"){
                  bcolor4=const Color.fromARGB(255, 198, 43, 31);
                  shownext=false;
                }
              });
            },
            child: Text("Submit",style:TextStyle(color:  Color.fromARGB(255, 5, 104, 184)))
            ),
            SizedBox(height:160),
            Row(
              children: [
                SizedBox(width: 290),
                ElevatedButton(
                  onPressed: shownext?(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Quesion5home()));
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