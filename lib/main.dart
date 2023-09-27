import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      title: "App",
    );
  }

}

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      // body: Container(
      //   width: double.infinity,
      //   height: 100,
      //   decoration: BoxDecoration(
      //     color: Colors.green,
      //   ),
      //   child: Center(
      //       child: FittedBox(
      //         child: Text("assdgasdasdasdasdasdasdasdsadasdasdasdasdasdasdasd"),
      //       ),
      //   ),
      // ),

      //===== set height width using ratio======
      // body: AspectRatio(
      //   aspectRatio: 16/4, // width x height
      //   child: Container(
      //     decoration: BoxDecoration(
      //       color: Colors.red,
      //     ),
      //   ),
      // ),

      //======set height width using percentage=====
      // body: FractionallySizedBox(
      //   widthFactor: 1, //100%
      //   heightFactor: 0.5, //50%
      //   child: Container(
      //     decoration: BoxDecoration(
      //       color: Colors.indigo,
      //     ),
      //   ),
      // ),

      body: Column(
        children: [
          Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.green),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(decoration: BoxDecoration(color: Colors.deepPurpleAccent),),
                    ),
                    Expanded(
                      child: Container(decoration: BoxDecoration(color: Colors.green),),
                    ),
                    Expanded(
                      child: Container(decoration: BoxDecoration(color: Colors.purpleAccent),),
                    ),
                    Expanded(
                      child: Container(decoration: BoxDecoration(color: Colors.amber),),
                    ),
                  ],
                ),
              ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.red),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.indigo),
            ),
          ),
        ],
      ),
    );
  }

}