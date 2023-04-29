import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


@RoutePage() 
class PageOne extends StatelessWidget {

  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Page One"),);
  }
}