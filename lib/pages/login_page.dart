import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:task_number_one/widgets/my_button.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginState();
}

final form = FormGroup({
  'name': FormControl<String>(validators: [
    Validators.required,
    Validators.minLength(3),
    Validators.maxLength(10)
  ]),
  'password': FormControl<String>(validators: [
    Validators.required,
    Validators.minLength(3),
    Validators.maxLength(10)
  ]),
});

class _LoginState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: form,
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ReactiveTextField(
                  formControlName: 'name',
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    fillColor: Colors.grey.shade50,
                    filled: true,
                    labelText: "  Enter Your Name",
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: ReactiveTextField(
                  obscureText: true,
                  formControlName: 'password',
                  decoration:
                      const InputDecoration(labelText: "  Enter Your password"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const MyButton(),
/*               ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  if (form.valid) {
                    // Perform login logic here
                    // ...
                    // Navigate to the home page
                    AutoRouter.of(context).push(HomePageRoute());
                  }
                },
              ), */
            ],
          ),
        ),
      ),
    );
  }
}
