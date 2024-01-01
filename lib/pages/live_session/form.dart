import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: formKey,
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Enter your name",
              ),
              validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r'^[a-zA-Z]{2,}$').hasMatch(value)) {
                  return "Wrong name format";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 15),
            TextFormField(
              decoration: const InputDecoration(labelText: "Enter your email"),
              validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(
                      r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}',
                    ).hasMatch(value)) {
                  return "Wrong password format";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue)),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  print('Form validated');
                } else {
                  print('form not validated');
                }
              },
              child:
                  const Text('submit', style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    ));
  }
}
