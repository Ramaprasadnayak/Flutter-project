import 'package:flutter/material.dart';
import 'package:flutter_application_6/Pages/fourth_question.dart';
import 'package:flutter_application_6/Pages/reward.dart';
import 'package:flutter_application_6/Pages/timer.dart';
class Quesion3home extends StatefulWidget{
  const Quesion3home({super.key});
  @override
  Quesion3 createState() =>Quesion3();
}


class Quesion3 extends State<Quesion3home>{
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
      appBar: AppBar(title: Text("Question 3 :",style: TextStyle(color: Color.fromARGB(255, 242, 238, 238)),),backgroundColor:  Color.fromARGB(255, 29, 10, 86),),
      backgroundColor: Color.fromARGB(255, 39, 12, 66),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Rewards(2)));
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
                child:  Text("Which political party does Barack Obama belong to?",style: TextStyle(color: const Color.fromARGB(255, 250, 249, 249)))
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
                    value: "Republican",
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
                    child: Text("A. Republican",style: TextStyle(color: Color.fromARGB(255, 255, 254, 254)),)
                    )
                  ),
                  
                  SizedBox(width: 20),
                  //option2
                  SizedBox(
                  width: 180,
                  height: 50,
                  child: RadioMenuButton(
                    value: "Democratic",
                    groupValue: selected, 
                    onChanged: showradio?
                    (selectedvalue){
                      setState(() {
                        selected=selectedvalue as String;
                      });
                    }:null,
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(bcolor2)
                    ),
                    child: Text("B. Democratic",style: TextStyle(color: Color.fromARGB(255, 255, 254, 254)),)
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
                    value: "Green",
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
                    child: Text("C. Green",style: TextStyle(color: Color.fromARGB(255, 255, 254, 254)))
                    ),
                  ),
                  
                  SizedBox(width: 20),

                  //option 4
                  SizedBox(
                  width: 180,
                  height: 50,
                  child: RadioMenuButton(
                    value: "Libertarian",
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
                    child: Text("D. Libertarian",style: TextStyle(color: Color.fromARGB(255, 255, 254, 254)),)
                    )
                  )
              ]
            ),
            SizedBox(height: 40),
            ElevatedButton(onPressed: (){
              setState(() {
                bcolor1 = bcolor2 = bcolor3 = bcolor4 = Color.fromARGB(255, 49, 56, 132);
                if (stopTimerCallback != null) {
                    stopTimerCallback!();
                }
                showradio=false;
                if(selected=="Democratic"){
                  bcolor2=Colors.green;
                  shownext=true;
                }
                else if(selected=="Republican"){
                  bcolor1=const Color.fromARGB(255, 198, 43, 31);
                  shownext=false;
                }
                else if(selected=="Green"){
                  bcolor3= const Color.fromARGB(255, 198, 43, 31);
                  shownext=false;
                }
                else if(selected=="Libertarian"){
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Quesion4home()));
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