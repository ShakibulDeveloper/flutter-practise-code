import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.indigoAccent,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            textStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.green,
            textStyle: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          bodySmall: TextStyle(
            fontSize: 14,
            color: Colors.black38,
          ),
        ),
      ),
      darkTheme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 28,
            color: Colors.red,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red,
        ),
      ),
      // themeMode: ThemeMode.dark,
      themeMode: ThemeMode.light,
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
            Text("Flutter App", style: Theme.of(context).textTheme.bodyLarge,),
            Text("version 3", style: Theme.of(context).textTheme.bodyMedium,),
            Text("Made by Shakibul", style: Theme.of(context).textTheme.bodySmall,),

            SizedBox(height: 10,),
            TextButton(onPressed: (){}, child: Text("click here"),),
            TextButton(onPressed: (){}, child: Text("click here"),),
            TextButton(onPressed: (){}, child: Text("click here"),),
            ElevatedButton(onPressed: (){}, child: Text("Approve"),),

            SizedBox(height: 5),
            ElevatedButton(onPressed: (){}, child: Text("Remove"), style:
               ElevatedButton.styleFrom(
                 backgroundColor: Colors.red,
               )
              ),
          ],
        ),
      ),
    );
  }

}