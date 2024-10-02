import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/constant.dart';

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({super.key});

  @override
  Widget build(BuildContext context) {
    var passwordKey = GlobalKey<FormState>();

    TextEditingController passController = TextEditingController();
    bool showpass = true;

    return TextFormField(
      onTap: () {},
      onChanged: (value) {
        print(value);
      },
      onFieldSubmitted: (value) {


        print(value);
      },

      obscureText: showpass,
      key: passwordKey,
      keyboardType: TextInputType.visiblePassword,
      controller: passController,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {

          },
          icon: const Icon(
            FontAwesomeIcons.eyeSlash,
            color: AppConstant.primaryColor,
          ),
        ),
        prefixIcon: const Icon(
          Icons.lock_outline,
          color: Colors.white,
          size: 35,
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
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Password must be filled';
        }
        return null;
      },
    );
  }

}
