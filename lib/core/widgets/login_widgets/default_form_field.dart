import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DefaultFormField extends StatelessWidget {
  const DefaultFormField({
    Key? key,
    required this.borderColor,
    required this.prefixIconColor,
    required this.suffixIconColor,
    required this.hint,
    required this.suffix,
    required this.prefix,
    required this.hintColor}) : super(key: key);

final Color borderColor;
final Color prefixIconColor;
final Color? suffixIconColor;
final String hint;
final IconData? suffix;
final IconData prefix;
final Color hintColor;
  @override
  Widget build(BuildContext context) {
    var emailKey = GlobalKey<FormState>();
    TextEditingController emailController=TextEditingController();
    return TextFormField(
      validator: (String? value){
        if (value!.isEmpty) {
          return 'Field must be filled';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      key: emailKey,
      controller: emailController,
      decoration: InputDecoration(
        suffixIcon:Icon(
          suffix,
          size: 35,
          color: suffixIconColor,
        ) ,
          prefixIcon:  Icon(
            prefix,
            size: 35,
            color: prefixIconColor,
          ),
          focusColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
            borderSide:  BorderSide(
              color: borderColor,
              width: 1.0,
            ),
          ),
          label:  Text(
            hint,
            style:  TextStyle(color: hintColor,fontWeight: FontWeight.w600,fontSize: 15),
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
