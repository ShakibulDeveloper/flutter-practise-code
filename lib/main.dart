import 'package:flutter/cupertino.dart'; // for ios
import 'package:flutter/material.dart'; // for andorid

void main(){
  // Hot Reload => ctrl+s
  // Hot Restart => ctrl + alt + \
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      title: 'Flutter App',
      debugShowCheckedModeBanner: true,
    );
  }
  
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        /*
          custom color use => Color(colorcode),
          readymate color use => Colors.colorname
         */
        leading: Icon(Icons.person, color: Colors.yellow, size: 28,),
      ),

      body:Column(
        children: [
          Text("Hello World!", style: TextStyle(
            fontSize: 32,
            color: Colors.red,
            fontWeight: FontWeight.w900,
          ),),
          Text("Hello World!", style: TextStyle(
            fontSize: 25,
            color: Colors.lightGreen,
            fontWeight: FontWeight.w500,
          ),),
          Text("Hello World!", style: TextStyle(
            fontSize: 32,
            color: Colors.red,
            fontWeight: FontWeight.w900,
          ),),
        ],
      ),
    );
  }

}