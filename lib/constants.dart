import 'package:flutter/material.dart';

const primaryColor = Color(0xFF2697FF);
const secondaryColor = Color(0xFF2A2D3E);
const bgColor = Color(0xFF212332);
const textColor = Colors.white;
const subTitleColor = Colors.white70;

const defaultPadding = 16.0;

TextStyle bodyLargeBold(BuildContext context){
  return Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold) ?? TextStyle(fontWeight: FontWeight.bold);
} 
TextStyle titleMediumBold(BuildContext context){
  return Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold) ?? TextStyle(fontWeight: FontWeight.bold);
} 
