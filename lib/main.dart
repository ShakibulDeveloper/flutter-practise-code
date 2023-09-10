import 'package:flutter/cupertino.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                  child: Text("Box 1", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    border: Border.all(width: 2, color: Colors.black),
                    // borderRadius: BorderRadius.circular(10),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                  // padding: EdgeInsets.all(20),
                  // padding: EdgeInsets.only(
                  //     top: 20,
                  //     bottom: 20,
                  //     left: 30,
                  //     right: 30,
                  // ),
                  padding: EdgeInsets.symmetric(
                    vertical: 30, //top & bottom
                    horizontal: 25, //left & right
                  ),
                  child: Text("Box 2", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(width: 2, color: Colors.black),
                    // borderRadius: BorderRadius.circular(10),
                    // borderRadius: BorderRadius.only(
                    //   topRight: Radius.circular(10),
                    //   bottomLeft: Radius.circular(10),
                    // ),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                backgroundColor: Colors.red,
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
                onLongPress: (){
                  print('button hold!');
                },
                onPressed: (){
                  print("button Clicked!");
                },
                child: Text("Read More"),
            ),
            TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                  textStyle: TextStyle(
                    fontSize: 15,
                  ),
                ),
                onPressed: (){},
                child: Text("Load More")),
            IconButton(onPressed: (){}, icon: Icon(Icons.dark_mode, color: Colors.green, size: 19,),),
            OutlinedButton(onPressed: (){}, child: Text("Explore"),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.deepPurpleAccent,

              ),
            ),
            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined, color: Colors.white54,),
                  fillColor: Colors.red,
                  filled: true,
                  hintText: "Your email address...",
                  hintStyle: TextStyle(
                    color: Colors.white38,
                  ),
                  label: Text("Email Address"),
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 1,
              width: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,

                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: Colors.white54,),
                  fillColor: Colors.red,
                  filled: true,
                  hintText: "Your password...",
                  hintStyle: TextStyle(
                    color: Colors.white38,
                  ),
                  label: Text("Password"),
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}