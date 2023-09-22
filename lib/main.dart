import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'style.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeState(),
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: LargeText(context),
        ),
      ),
    );
  }

}

class HomeState extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeScreen();
  }

}

class HomeScreen extends State<HomeState>{
  int count = 0;

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
            Text('${count}', style: Theme.of(context).textTheme.bodyLarge,),
            Text("Number Count", style: Theme.of(context).textTheme.bodySmall,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          count++;
          setState(() {});
        },
      ),
    );
  }

}


// class HomeScreen extends StatelessWidget{
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home"),
//       ),
//       // body: Container(
//       //   width: double.infinity,
//       //   height: 250,
//       //   color: Colors.red,
//       //   alignment: Alignment.center,
//       //   child: AspectRatio(
//       //     aspectRatio: 16/9,
//       //     child: Container(
//       //       color: Colors.green,
//       //     ),
//       //   ),
//       // ),
//
//       // body: Center(
//       //   child: FractionallySizedBox(
//       //     widthFactor: 0.5, // here 1 mean 100%, 0.5 is 50%
//       //     heightFactor: 0.5,
//       //     child: Container(
//       //       color: Colors.indigoAccent,
//       //     ),
//       //   ),
//       // ),
//
//       // body: LayoutBuilder(
//       //   builder: (BuildContext Context, BoxConstraints Constraints){
//       //     if(Constraints.maxWidth > 600){
//       //       return FractionallySizedBox(
//       //         widthFactor: 1,
//       //         heightFactor: 0.3,
//       //         child: Container(
//       //           width: 100,
//       //           height: 100,
//       //           color: Colors.green,
//       //         ),
//       //       );
//       //     }
//       //     else{
//       //       return Center(
//       //         child: FractionallySizedBox(
//       //           widthFactor: 0.5,
//       //           heightFactor: 0.5,
//       //           child: Container(
//       //             width: 100,
//       //             height: 100,
//       //             color: Colors.red,
//       //           ),
//       //         ),
//       //       );
//       //     }
//       //   },
//       // ),
//
//       // body: SingleChildScrollView(
//       //   scrollDirection: Axis.horizontal,
//       //   child: Row(
//       //     children: [
//       //       Container(height: 100, width: 100, color: Colors.red,),
//       //       Container(height: 100, width: 100, color: Colors.green,),
//       //       Container(height: 100, width: 100, color: Colors.blueAccent,),
//       //       Container(height: 100, width: 100, color: Colors.deepPurpleAccent,),
//       //       Container(height: 100, width: 100, color: Colors.amber,),
//       //       Container(height: 100, width: 100, color: Colors.black38,),
//       //       Container(height: 100, width: 100, color: Colors.blueGrey,),
//       //     ],
//       //   ),
//       // ),
//
//       // body: Row(
//       //   children: [
//       //     Expanded(
//       //       flex: 25,
//       //       child: Container(color: Colors.red,),
//       //     ),
//       //     Expanded(
//       //       flex: 60,
//       //       child: Container(color: Colors.green,),
//       //     ),
//       //     Expanded(
//       //       flex: 25,
//       //       child: Container(color: Colors.indigoAccent,),
//       //     ),
//       //     Expanded(
//       //       flex: 25,
//       //       child: Container(color: Colors.amber,),
//       //     ),
//       //   ],
//       // ),
//
//       // body: Column(
//       //   children: [
//       //     Text("Screen Width: ${mediaWidth}"),
//       //     Text("Screen Height: ${mediaHeight}"),
//       //     Text("Screen Orientation: ${mediaOrientation}"),
//       //   ],
//       // ),
//
//       // body: Center(child: Text("Flutter App", style: Theme.of(context).textTheme.bodyLarge,)),
//
//      // body: ResponsiveGridRow(
//      //   children: [
//      //     ResponsiveGridCol(
//      //         xl: 12, lg: 12, md: 12, sm: 12, xs: 12,
//      //         child: Container(
//      //           height: 100,
//      //           color: Colors.indigoAccent,
//      //         ),
//      //     ),
//      //     ResponsiveGridCol(
//      //       xl: 4, lg: 4, md: 6, sm: 6, xs: 6,
//      //       child: Container(
//      //         height: 100,
//      //         color: Colors.green,
//      //       ),
//      //     ),
//      //     ResponsiveGridCol(
//      //       xl: 4, lg: 4, md: 6, sm: 6, xs: 6,
//      //       child: Container(
//      //         height: 100,
//      //         color: Colors.red,
//      //       ),
//      //     ),
//      //     ResponsiveGridCol(
//      //       xl: 4, lg: 4, md: 12, sm: 12, xs: 12,
//      //       child: Container(
//      //         height: 100,
//      //         color: Colors.amber,
//      //       ),
//      //     ),
//      //   ],
//      // ),
//
//     // body: SingleChildScrollView(
//     //   scrollDirection: Axis.vertical,
//     //   child: BootstrapContainer(
//     //     fluid: true,
//     //     children: [
//     //       BootstrapRow(
//     //         children: [
//     //           BootstrapCol(
//     //             sizes: 'col-lg-12',
//     //             child: Container(
//     //               height: 100,
//     //               color: Colors.red,
//     //             ),
//     //           ),
//     //         ],
//     //       ),
//     //       BootstrapRow(
//     //         children: [
//     //           BootstrapCol(
//     //             sizes: 'col-lg-3 col-sm-12 col-md-6',
//     //             child: Container(
//     //               height: 200,
//     //               color: Colors.amber,
//     //             ),
//     //           ),
//     //           BootstrapCol(
//     //             sizes: 'col-lg-3 col-sm-12 col-md-6',
//     //             child: Container(
//     //               height: 200,
//     //               color: Colors.indigoAccent,
//     //             ),
//     //           ),
//     //           BootstrapCol(
//     //             sizes: 'col-lg-3 col-sm-12 col-md-6',
//     //             child: Container(
//     //               height: 200,
//     //               color: Colors.purple,
//     //             ),
//     //           ),
//     //           BootstrapCol(
//     //             sizes: 'col-lg-3 col-sm-12 col-md-6',
//     //             child: Container(
//     //               height: 200,
//     //               color: Colors.purpleAccent,
//     //             ),
//     //           ),
//     //         ],
//     //       ),
//     //     ],
//     //   ),
//     // ),
//     );
//   }
//
// }