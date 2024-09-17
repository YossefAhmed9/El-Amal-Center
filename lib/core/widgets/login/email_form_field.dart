import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({Key? key, required this.borderColor, required this.iconColor}) : super(key: key);
final Color borderColor;
final Color iconColor;
  @override
  Widget build(BuildContext context) {
    var emailKey = GlobalKey<FormState>();
    TextEditingController emailController=TextEditingController();
    return TextFormField(
      key: emailKey,
      controller: emailController,
      decoration: InputDecoration(
          prefixIcon:  Icon(
            Icons.mail_outline,
            color: iconColor,
          ),
          focusColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
            borderSide:  BorderSide(
              color: borderColor,
              width: 1.0,
            ),
          ),
          label: const Text(
            'Email',
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
