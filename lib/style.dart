import 'package:flutter/material.dart';

//=======INPUT FIELD STYLES========
InputDecoration AppInputStyle(context, String labelText){
   return InputDecoration(
    filled: true,
    fillColor: Colors.black12,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 0, color: Colors.white),
    ),
    hintText: "Enter ${labelText}",
    label: Text("$labelText"),
  );
}

//======LARGE TEXT STYLES========
TextStyle LargeTextStyle(){
  return TextStyle(
    fontSize: 38,
    fontWeight: FontWeight.bold,
  );
}

//======ELEVATED BUTTON STYLES========
ElevatedButtonThemeData AppElevatedButton(){
  return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
      )
  );
}