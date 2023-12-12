import 'package:calculationapp/bmi.dart';
import 'package:calculationapp/buysell.dart';
import 'package:calculationapp/grade.dart';
import 'package:calculationapp/leapyear.dart';
import 'package:calculationapp/meter_km.dart';
import 'package:calculationapp/multipiclstion.dart';
import 'package:calculationapp/taxes.dart';
import 'package:calculationapp/zakkat.dart';
import 'package:flutter/material.dart';
import 'circular_squar_rectangle.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BMI(),));
                }, child: Text("BMI")),
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BUYSELL(),));
                }, child: Text("Buy & Sell")),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Zakkat(),));
                }, child: Text("Zakkat")),
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Leapyearlist(),));
                }, child: Text("Leapyear")),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GRADE(),));
                }, child: Text("GRADE")),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Multiplication(),));
                }, child: Text("Multiplication")),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Meter_KM(),));
                }, child: Text("Meter & KM")),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TaxCalculation(),));
                }, child: Text("IncomeTax")),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Circular_Square_Rectangle(),));
                }, child: Text("Circular_Square_Rectangle")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
