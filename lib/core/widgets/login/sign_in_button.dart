import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/utils/constant.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(width: 200,height: 45,
          decoration: BoxDecoration(color: AppConstant.primaryColor,borderRadius: BorderRadius.circular(15),),
          child: MaterialButton(
            onPressed: (){},
            child: const Text(
              'Sign In',
              style: TextStyle(
                  color: AppConstant.defaultColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
            ),
      ),
    );
  }
}
