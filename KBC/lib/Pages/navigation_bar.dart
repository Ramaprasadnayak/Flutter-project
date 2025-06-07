import 'package:flutter/material.dart';

class Drawerr extends StatelessWidget{
  const Drawerr({super.key});
  @override
  Widget build(BuildContext context){
    return Drawer(
          child: Container(
            color: Color.fromARGB(255, 39, 12, 66),
            child: ListView(
            children: [
              DrawerHeader(child: Text("Menu",style: TextStyle(color: Colors.white))),
              ListTile(title: Text("Rate us",style: TextStyle(color: Colors.white))),
              ListTile(title: Text("need help",style: TextStyle(color: Colors.white)))
            ],
          ),
          )
        );
  }
}