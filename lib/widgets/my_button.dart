import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:task_number_one/route/app_router.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    final form = ReactiveForm.of(context);
    return Container(
      child: MaterialButton(
        color: Colors.black54,
        onPressed: form!.valid ? () => _onPressed(context) : null,
        child: const Text(
          "Login",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

void _onPressed(BuildContext context) {
  context.router.replaceAll([const HomeRoute()]);
}
