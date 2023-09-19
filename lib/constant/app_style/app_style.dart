import 'package:flutter/material.dart';

class AppStyles {
  TextStyle defaultStyle(double size, Color color, FontWeight fw) {
    return TextStyle(
      // Replace 'MyCustomFont' with the actual font name
      fontSize: size,
      color: color,
      fontWeight: fw,
    );
  }

  TextStyle defaultStyleWithHt(
      double size, Color color, FontWeight fw, double ht) {
    return TextStyle(fontSize: size, color: color, fontWeight: fw, height: ht);
  }

  TextStyle poppins(double size, Color color, FontWeight fw) {
    return TextStyle(
      fontFamily: 'Poppins', // Replace 'MyCustomFont' with the actual font name
      fontSize: size,
      color: color,
      fontWeight: fw,
    );
  }

  TextStyle poppinsWithHt(double size, Color color, FontWeight fw, double ht) {
    return TextStyle(
        fontFamily:
            'Poppins', // Replace 'MyCustomFont' with the actual font name
        fontSize: size,
        color: color,
        fontWeight: fw,
        height: ht);
  }

  TextStyle montserrat(double size, Color color, FontWeight fw) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: size,
      color: color,
      fontWeight: fw,
    );
  }

  TextStyle montserratWithHt(
      double size, Color color, FontWeight fw, double ht) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: size,
      color: color,
      fontWeight: fw,
      height: ht,
    );
  }

  TextStyle catamaran(double size, Color color, FontWeight fw) {
    return TextStyle(
      fontFamily: 'Catamaran',
      fontSize: size,
      color: color,
      fontWeight: fw,
    );
  }

  TextStyle catamaranWithHt(
      double size, Color color, FontWeight fw, double ht) {
    return TextStyle(
      fontFamily: 'Catamaran',
      fontSize: size,
      color: color,
      fontWeight: fw,
      height: ht,
    );
  }

  TextStyle quicksand(double size, Color color, FontWeight fw) {
    return TextStyle(
      fontFamily: 'Quicksand',
      fontSize: size,
      color: color,
      fontWeight: fw,
    );
  }

  TextStyle quicksandWithHt(
      double size, Color color, FontWeight fw, double ht) {
    return TextStyle(
      fontFamily: 'Quicksand',
      fontSize: size,
      color: color,
      fontWeight: fw,
      height: ht,
    );
  }
  TextStyle nunitoSans(double size, Color color, FontWeight fw) {
    return TextStyle(
      fontFamily: 'Nunito Sans',
      fontSize: size,
      color: color,
      fontWeight: fw,
    );
  }

  TextStyle nunitoSansWithHt(
      double size, Color color, FontWeight fw, double ht) {
    return TextStyle(
      fontFamily: 'Nunito Sans',
      fontSize: size,
      color: color,
      fontWeight: fw,
      height: ht,
    );
  }

  TextStyle openSans(double size, Color color, FontWeight fw) {
    return TextStyle(
      fontFamily: 'OpenSans',
      fontSize: size,
      color: color,
      fontWeight: fw,
    );
  }

  TextStyle openSansWithHt(
      double size, Color color, FontWeight fw, double ht) {
    return TextStyle(
      fontFamily: 'OpenSans',
      fontSize: size,
      color: color,
      fontWeight: fw,
      height: ht,
    );
  }
}
