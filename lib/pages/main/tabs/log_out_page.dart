import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LogOutPage extends StatelessWidget {
  const LogOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log Out'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // TODO: AutoRouter.of(context).pop();
            // efjdshfkas
          },
          child: const Text('Log Out'),
        ),
      ),
    );
  }
}
