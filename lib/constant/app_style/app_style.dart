import 'package:flutter/material.dart';



class AppStyles{

  TextStyle defaultStyle(double size, Color color, FontWeight fw) {
    return TextStyle(
      // Replace 'MyCustomFont' with the actual font name
      fontSize: size,
      color: color,
      fontWeight: fw,
    );
  }

  TextStyle defaultStyleWithHt(double size, Color color, FontWeight fw, double ht) {
    return TextStyle(

        fontSize: size,
        color: color,
        fontWeight: fw,
        height: ht);
  }
  TextStyle poppins(double size, Color color, FontWeight fw) {
    return TextStyle(
      fontFamily:
      'Poppins', // Replace 'MyCustomFont' with the actual font name
      fontSize: size,
      color: color,
      fontWeight: fw,
    );
  }
  TextStyle poppinsWithHt(double size, Color color, FontWeight fw,double ht) {
    return TextStyle(
      fontFamily:
      'Poppins', // Replace 'MyCustomFont' with the actual font name
      fontSize: size,
      color: color,
      fontWeight: fw,
      height: ht
    );
  }


}