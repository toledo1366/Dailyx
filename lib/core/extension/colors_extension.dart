import 'package:flutter/material.dart';

extension ColorsExtension on Color{
  static Color fromHex(String hexColorValue){
    final buffer = StringBuffer();

    if(hexColorValue.length == 6 || hexColorValue.length == 7) buffer.write('ff');
    buffer.write(hexColorValue.replaceFirst('#', ''));
    
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}