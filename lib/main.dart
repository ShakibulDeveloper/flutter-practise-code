import 'package:flutter/cupertino.dart';
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
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 16,
            ),
          ),
        ),
      ),
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
      body: Column(
        children: [
          Switch(
              value: true,
              activeColor: Colors.green,
              onChanged: (bool value){},
          ),
          ElevatedButton(onPressed: (){
            showDialog(context: context, barrierDismissible: false, builder: (context){
              return AlertDialog(
                title: Text("Alert"),
                content: Text("This is a alert dialog"),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  },
                    child: Text("Cancel"),
                  ),
                  TextButton(onPressed: (){}, child: Text("Proceed")),
                ],
              );
            });
          }, child: Text("Dialog Button")),

          SizedBox(height: 8,),
          ElevatedButton(onPressed: (){
            showAboutDialog(
                context: context,
                applicationIcon: Image.network("https://storage.googleapis.com/cms-storage-bucket/a9d6ce81aee44ae017ee.png", width: 30,),
                applicationName: "Flutter",
                applicationVersion: "v1.0.0",
                children: [
                  Text("This is my about Dialog"),
                ],
            );
          },
            child: Text("About Dialog"),
          ),

          SizedBox(height: 8,),
          ElevatedButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("This is my Snackbar")),
                );
              },
              child: Text("Snackbar Button"),
          ),

          SizedBox(height: 8,),
          ElevatedButton(
            onPressed: (){
              showModalBottomSheet(context: context,
                  isDismissible: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12),
                    )
                  ),
                  builder: (context){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("This is my modal Buttomsheet"),
                  ],
                );
              });
            },
            child: Text("Modal Bottomsheet"),
          ),
        ],
      ),
    );
  }

}