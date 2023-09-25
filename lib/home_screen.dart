import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.sizeOf(context);
    // print(size.width);
    // print(size.height);
    // print(size.aspectRatio);
    // print(size.flipped);
    //
    // Orientation orientation  = MediaQuery.orientationOf(context);
    // print(orientation.name);
    //
    // List<DisplayFeature> display = MediaQuery.displayFeaturesOf(context);
    // print(display);
    //
    // double pixel = MediaQuery.devicePixelRatioOf(context);
    // print(pixel);
    //
    // var screenMode = MediaQuery.platformBrightnessOf(context);
    // print(screenMode.name);

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [

          // we can also use layoutBuilder & OrientationBuilder that will work same as like MediaQuery.
          LayoutBuilder(builder: (context, constraints){
            if(constraints.maxWidth > 600){
              return Text("Big Screen", style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),);
            }else{
              return Text("Small Screen");
            }
          }),

          OrientationBuilder(builder: (context, constraints){
            return Text(constraints.name);
          }),

          //wrap
          Wrap(
            children: [
              Text("asdhasdiuasyduiyasuidyuiasydiuasyduiasdguiasduiasduiyudiasyud"),
            ],
          ),
          // Text("asdhasdiuasyduiyasuidyuiasydiuasyduiasdguiasduiasduiyudiasyud"),
        ],
      ),
    );
  }

}