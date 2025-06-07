import 'package:flutter/material.dart';
import 'package:flutter_application_6/Pages/first_question.dart';
import 'package:flutter_application_6/Pages/navigation_bar.dart';

void main(){
  runApp(const KBC());
}

class KBC extends StatelessWidget{
  const KBC({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage()
    );
  }
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 39, 12, 66),
        appBar: AppBar(title: Text("KBC APP",style: TextStyle(color: Color.fromARGB(255, 242, 238, 238)),),backgroundColor:  Color.fromARGB(255, 39, 13, 66),),
        drawer: Drawerr(),
        body: Center(
          child:Column(
            children: [
              //1st widget
              SizedBox(height: 90),
              
              //2nd widget
              Image.asset("assets/kbc.png"),
              
              //3rd widget
              SizedBox(height: 90),

              //4th widget
              ElevatedButton(onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>Quesion1home()));
              },
              style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 251, 15, 208)),
              child: Text("Click here to start",style: TextStyle(color: const Color.fromARGB(255, 229, 224, 224)))
              )
              
              //5th widget

            ],
          )
        ),
    );
  }
}


