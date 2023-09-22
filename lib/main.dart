import 'package:flutter/material.dart';
import 'style.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeState(),
      title: "Sum App",
      theme: ThemeData(
        primarySwatch: Colors.green,
        elevatedButtonTheme: AppElevatedButton(),
        textTheme: TextTheme(
          bodyLarge: LargeTextStyle(),
        ),
      ),
    );
  }

}

//=======HOME ROUTE=========
class HomeState extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeUI();
  }

}

class HomeUI extends State<HomeState>{
  Map<String, int> inputItem = {"input1": 0, "input2": 0,};
  int showSumOutput = 0;

  void AddItemToMap(String inputKey, inputValue){
    inputItem.update(inputKey, (value) => int.parse(inputValue));
  }
  int AddNumbers(){
     return showSumOutput = inputItem["input1"]!+inputItem["input2"]!;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AspectRatio(
            aspectRatio: 4/3,
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Total: ${showSumOutput}", style: Theme.of(context).textTheme.bodyLarge,),
                  SizedBox(height: 20,),

                  TextFormField(onChanged: (value){AddItemToMap("input1", value);}, decoration: AppInputStyle(context, "First Number"),),
                  SizedBox(height: 12,),
                  TextFormField(onChanged: (value){AddItemToMap("input2", value);}, decoration: AppInputStyle(context, "Second Number"),),

                  SizedBox(height: 12,),
                  ElevatedButton(
                      onPressed: (){
                        AddNumbers();
                        setState(() {});
                      },
                      child: Text("Add")
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
