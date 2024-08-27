
import 'package:flutter/material.dart';

Widget writeText({required String text,
    FontWeight fontWeight = FontWeight.normal,
    double fontSize=16,
    Color color = Colors.black,
    bool crossed = false,
    bool underline= false
}){
  return Text(
    text,
    style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        decoration: crossed?TextDecoration.lineThrough: underline?TextDecoration.underline: TextDecoration.none
        
    ),
  );
}