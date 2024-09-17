import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/utils/constant.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key, required this.buttonColor, required this.textColor, required this.buttonWidth, required this.buttonText, this.buttonHeight}) : super(key: key);
final Color buttonColor;
final Color textColor;
final double? buttonWidth;
final double? buttonHeight;
final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(top: 27.0),
      child: Container(width: buttonWidth,height: buttonHeight,
          decoration: BoxDecoration(color: buttonColor,borderRadius: BorderRadius.circular(15),),
          child: MaterialButton(
            onPressed: (){},
            child:  Text(
              buttonText,
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
