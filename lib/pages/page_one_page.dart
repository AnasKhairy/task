import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PageOnePage extends StatelessWidget {
  const PageOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Page One"),
    );
  }
}
