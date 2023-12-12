import 'package:calculationapp/protplio.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'home.dart';
class Liquid extends StatelessWidget {
  const Liquid({super.key});

  @override
  Widget build(BuildContext context) {
    final pages=[
      ProtP(),
      HomePage(),
    ];

    return    gitSafeArea(
      child: Scaffold(

        body: LiquidSwipe(pages: pages),
      ),
    );
  }
}
