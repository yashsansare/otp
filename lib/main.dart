import 'package:flutter/material.dart';
import 'package:otp/otp.dart';

void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Otp(),

    },
  ));
}