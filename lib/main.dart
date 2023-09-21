import 'package:flutter/cupertino.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }

}

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Icon(CupertinoIcons.back),
          middle: Text("Home"),
          trailing: CupertinoSwitch(
              value: false,
              activeColor: CupertinoColors.link,
              onChanged: (bool value){

              },
          ),
        ),
        child: Center(
          child: ListView(
            children: [
              SizedBox(height: 100,),
              Column(
                children: [
                  Text("Hello Apple"),
                  Text("Hello Flutter"),
                  CupertinoButton(child: Text("Click Me"), onPressed: (){}),
                  CupertinoButton.filled(child: Text("Click Me"), onPressed: (){})
                ],
              ),
              SizedBox(height: 100,),
              Column(
                children: [
                  CupertinoTabBar(
                    items: [
                      BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "Home",),
                      BottomNavigationBarItem(icon: Icon(CupertinoIcons.mail), label: "Mail",),
                      BottomNavigationBarItem(icon: Icon(CupertinoIcons.phone), label: "Phone",),
                      BottomNavigationBarItem(icon: Icon(CupertinoIcons.map), label: "Map",),
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
    );
  }

}