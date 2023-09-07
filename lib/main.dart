import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      title: 'Mobile App',
    );
  }
  
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hello World!"),
          Text("Hello World!"),
          Text("Hello World!"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Good ', style: TextStyle(color: Colors.red),),
            Text('Morning ', style: TextStyle(color: Colors.red)),
            Text('Flutter ', style: TextStyle(color: Colors.red)),
          ],
        ),
          Column(
            children: [
              Image.network('https://images.unsplash.com/photo-1682687220063-4742bd7fd538?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1375&q=80',
              width: 250,
              fit: BoxFit.cover,
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/Koala.jpg', width: 82, fit: BoxFit.cover,), // local img
                  Image.asset('images/Penguins.jpg', width: 82, fit: BoxFit.scaleDown,), // local img
                  Image.asset('images/Koala.jpg', width: 82, fit: BoxFit.scaleDown,) // local img
                ],
              ),
            ],
          ),
          Column(
            children: [
              RichText(text: TextSpan(
                children: [
                  TextSpan(text: 'Already a member? Click Here: '),
                  TextSpan(text: 'Sign in', style: TextStyle(color: Colors.blue)),
                ],
              )),
            ],
          ),
        ],
      ),
    );
  }

}