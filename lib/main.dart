import 'package:flutter/material.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      title: "App",
    );
  }
  
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Scrollbar(
        thickness: 5,
        radius: Radius.circular(20),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Username"),
              subtitle: Text("admin@gmail.com"),
              trailing: Icon(Icons.arrow_circle_right_outlined),
            ),
            Divider(
              height: 0,
              color: Colors.red,
              thickness: 1,
              indent: 16,
              endIndent: 16,
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Username"),
              subtitle: Text("admin@gmail.com"),
              trailing: Icon(Icons.arrow_circle_right_outlined),
            ),
            Divider(
              height: 0,
              color: Colors.red,
              thickness: 1,
              indent: 16,
              endIndent: 16,
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Username"),
              subtitle: Text("admin@gmail.com"),
              trailing: Icon(Icons.arrow_circle_right_outlined),
            ),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World"),
            Text("hello World2"),
          ],
        ),
      ),

    );
  }
  
}