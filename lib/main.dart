

import 'package:calculationapp/home.dart';
import 'package:calculationapp/liquid.dart';
import 'package:calculationapp/protplio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return   MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Liquid(),
     );
   }
 }
