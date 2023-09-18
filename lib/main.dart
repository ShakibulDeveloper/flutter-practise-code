import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      title: "Flutter App",
    );
  }

}

class HomeScreen extends StatelessWidget{
  List<String> productList = ["Mango", "Apple", "Banana", "Pine Apple"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      // body: GridView.builder(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      //     itemCount: 10,
      //     itemBuilder: (context, index){
      //       return Container(
      //         alignment: Alignment.center,
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Icon(Icons.add_circle),
      //             Text("$index"),
      //           ],
      //         ),
      //       );
      //     },
      // ),
      body: ListView.separated(
        itemCount: productList.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text("${productList[index]}"),
            subtitle: Text("Index Number: ${index+1}"),
          );
        },
        separatorBuilder: (context, index){
          return Divider();
        },
      ),
    );
  }

}