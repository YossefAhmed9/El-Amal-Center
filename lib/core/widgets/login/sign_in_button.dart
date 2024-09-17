import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/utils/constant.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key, required this.buttonColor, required this.textColor}) : super(key: key);
final Color buttonColor;
final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 27.0),
      child: Container(width: 300,height: 45,
          decoration: BoxDecoration(color: buttonColor,borderRadius: BorderRadius.circular(15),),
          child: MaterialButton(
            onPressed: (){},
            child:  Text(
              'Sign In',
              style: TextStyle(
                  color: textColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
          ),
      ),
    );
  }
}
