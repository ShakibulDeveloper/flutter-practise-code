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
      title: "Sum App",
    );
  }

}

class HomeScreenState extends StatefulWidget{
  const HomeScreenState({super.key});

  @override
  State<StatefulWidget> createState() => HomeScreenUI();

}

class HomeScreenUI extends State<HomeScreenState>{
  final TextEditingController _fieldOneTEController = TextEditingController();
  final TextEditingController _fieldTwoTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sum App"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _fieldOneTEController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                hintText: "Field 1",
              ),
              validator: (String? value){
                if(value?. trim().isEmpty ?? true){
                  return "Enter Valid Number";
                }else{
                  return null;
                }
              },
            ),
            TextFormField(
              controller: _fieldTwoTEController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Field 2",
              ),
              validator: (String? value){
                if(value?. trim().isEmpty ?? true){
                  return "Enter Valid Number";
                }else{
                  return null;
                }
              },
            ),
            const SizedBox(height: 8),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                    icon: const Icon(Icons.add),
                    label: const Text("Add"),
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        double inputFieldOneValue = parseToDouble(_fieldOneTEController.text);
                        double inputFieldTwoValue = parseToDouble(_fieldTwoTEController.text);
                        result = addition(inputFieldOneValue, inputFieldTwoValue);
                      }
                      setState(() {});
                    },
    ),
                ElevatedButton.icon(
                    icon: const Icon(Icons.remove),
                    label: const Text("Sub"),
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        double inputFieldOneValue = parseToDouble(_fieldOneTEController.text);
                        double inputFieldTwoValue = parseToDouble(_fieldTwoTEController.text);
                        result = sub(inputFieldOneValue, inputFieldTwoValue);
                      }
                      setState(() {});
                    },
    ),
              ],
            ),
            Text('Result: $result', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }

  double parseToDouble(String text){
    return double.tryParse(text) ?? 0;
  }

  double addition(double num1, double num2){
    return num1+num2;
  }
  double sub(double num1, double num2){
    return num1-num2;
  }

}
