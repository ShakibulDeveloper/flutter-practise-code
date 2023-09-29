import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(builder: (BuildContext context) {
      return Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomeScreen(),
            title: "App",
          );
        }
      );
    },);
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
      // body: Stack(
      //   children: [
      //     Container(
      //       height: 200,
      //       width: 200,
      //       decoration: BoxDecoration(
      //         color: Colors.green,
      //       ),
      //     ),
      //     Positioned.fill(
      //         child: Align(
      //           alignment: Alignment.topRight,
      //           child: Container(
      //             height: 100,
      //             width: 100,
      //             decoration: BoxDecoration(
      //               color: Colors.red,
      //             ),
      //           ),
      //         ),
      //     ),
      //     Positioned(
      //       top: 0,
      //       right: 0,
      //       child: Container(
      //         height: 50,
      //         width: 50,
      //         decoration: BoxDecoration(
      //           color: Colors.amber,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),

      // body: ResponsiveBuilder(
      //   builder: (context, sizeInformation){
      //     if(sizeInformation.isMobile){
      //       return Container(
      //         height: 50,
      //         width: 50.sw,
      //         decoration: BoxDecoration(
      //           color: Colors.green,
      //         ),
      //       );
      //     }else{
      //       return Container(
      //         height: 200,
      //         width: 200,
      //         decoration: BoxDecoration(
      //           color: Colors.red,
      //         ),
      //       );
      //     }
      //   },
      // ),

    body: Center(child: Text("Hello World!", style:
    TextStyle(
        fontSize: 20.sp // for text & icon we will use sp
                        //for container,box we will use w, h
    ),
    )),
    );
  }

}