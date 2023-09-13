import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      title: "My App",
    );
  }

}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              print("tap");
            },
            onLongPress: (){
              print("hold");
            },
            onDoubleTap: (){
              print("double tap");
            },
            child: Center(child: Text("Hello World", style: TextStyle(
              fontSize: 19,
            ),)),
          ),
          InkWell(
            onTap: (){
              print("tap");
            },
            onLongPress: (){
              print("hold");
            },
            onDoubleTap: (){
              print("double tap");
            },
            child: Center(child: Text("Hello Flutter", style: TextStyle(
              fontSize: 19,
            ),)),
          ),
        ],
      ),
    );
  }

}