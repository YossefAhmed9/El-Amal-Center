import 'package:flutter/material.dart';

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var passwordKey = GlobalKey<FormState>();
TextEditingController passController=TextEditingController();
    return TextFormField(
      key: passwordKey,
      controller: passController,
      decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.lock_outline,
            color: Colors.white,
          ),
          focusColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
            borderSide: const BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
          label: const Text(
            'Password',
            style: TextStyle(color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(20),
          )),
    );
  }
}
