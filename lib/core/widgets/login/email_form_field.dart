import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailKey = GlobalKey<FormState>();
    TextEditingController emailController=TextEditingController();
    return TextFormField(
      key: emailKey,
      controller: emailController,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.mail_outline,
            color: Colors.white,
          ),
          focusColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2.0,
            ),
          ),
          label: Text(
            'Email',
            style: TextStyle(color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(20),
          )),
    );
  }
}
