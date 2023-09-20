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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index){
            return ListTile(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductDetailsScreen(productId: index.toString()))
                 ).then((value){
                   ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(content: Text("$value"))
                   );
                });
                },
              title: Text("Product Id: $index"),
              subtitle: Text("view details"),
            );
          },
      ),
    );
  }

}

class ProductDetailsScreen extends StatelessWidget{
  final String productId;
  const ProductDetailsScreen({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(productId, style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),),
            Text("Your Product Id", style: TextStyle(
              color: Colors.black38,
              fontSize: 13,
            ),),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context, "Product $productId closed!");
            }, child: Text("Back"))
          ],
        ),
      ),
    );
  }

}