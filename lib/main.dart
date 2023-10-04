import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreenState(),
      title: "Flutter App",
    );
  }

}

class HomeScreenState extends StatefulWidget{
  const HomeScreenState({super.key});

  @override
  State<StatefulWidget> createState() => HomeScreenUI();
}

class HomeScreenUI extends State<HomeScreenState>{
  int count = 0;

  //1
  @override
  initState(){
    super.initState();
    print('initState');
  }

  //2
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  //3
  @override
  void didUpdateWidget(covariant HomeScreenState oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  //4
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(child: Text(count.toString())),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          count++;
          print("build");
          setState(() {});
        },
      ),
    );
  }

  //5
  @override
  void deactivate() {
    super.deactivate();
    print("deactive");
  }

  //6
  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

}