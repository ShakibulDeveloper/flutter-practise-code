import 'dart:ui';
import 'package:flutter/material.dart';

TextStyle LargeText(context){
  double mediaWidth = MediaQuery.of(context).size.width;
  double mediaHeight = MediaQuery.of(context).size.height;
  dynamic mediaOrientation = MediaQuery.of(context).orientation;

  if(mediaWidth > 700){
    //=== DESKTOP VIEW ===
    return TextStyle(
      fontSize: 64,
      fontWeight: FontWeight.bold,
    );
  }

  else{
    //=== MOBILE VIEW ===
    return TextStyle(
      fontSize: 42,
    );
  }

}