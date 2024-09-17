import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NameFormField extends StatelessWidget {
  const NameFormField({Key? key, required this.borderColor, required this.iconColor}) : super(key: key);
  final Color borderColor;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    var nameKey = GlobalKey<FormState>();
    TextEditingController nameController=TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        key: nameKey,
        controller: nameController,
        decoration: InputDecoration(
            prefixIcon:  Icon(
              FontAwesomeIcons.circleUser,size: 35,
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
              'Name',
              style: TextStyle(color: Colors.white),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(20),
            )),
      ),
    );
  }
}
