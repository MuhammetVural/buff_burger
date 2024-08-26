import 'package:flutter/material.dart';

const primaryColor = Color(0xFF2697FF);
const secondaryColor = Color(0xFF2A2D3E);
const bgColor = Color.fromARGB(255, 40, 42, 60);
const textColor = Colors.white;
const subTitleColor = Colors.white70;

double screenWidth(BuildContext context){
  return MediaQuery.of(context).size.width;
}
double screenHeight(BuildContext context){
  return MediaQuery.of(context).size.height;
}

const defaultPadding = 16.0;

TextStyle bodyLargeBold(BuildContext context){
  return Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold) ?? TextStyle(fontWeight: FontWeight.bold);
} 
TextStyle headlineLargeBold(BuildContext context){
  return Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.white, fontWeight: FontWeight.bold) ?? TextStyle(fontWeight: FontWeight.bold,);
} 
TextStyle titleMediumBold(BuildContext context){
  return Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold) ?? TextStyle(fontWeight: FontWeight.bold);
} 
BoxDecoration radius20Decoration(){
  return BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20),), color: bgColor);
}