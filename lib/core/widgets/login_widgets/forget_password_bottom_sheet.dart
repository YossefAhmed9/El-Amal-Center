import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/widgets/login_widgets/sign_in_button.dart';

import '../../utils/constant.dart';
import '../../utils/styles.dart';
import 'default_form_field.dart';

class ForgetPasswordBottomSheet extends StatelessWidget {
  const ForgetPasswordBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppConstant.primaryColor),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Forget password',
                style: Styles.textStyle25(context).copyWith(color: Colors.black,fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Text(
                  'Enter your email for verification process we will send 5 digits code to your email',
                  style: Styles.textStyle18(context).copyWith(color: Colors.black,fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0,bottom: 14),
                child: Text('Email',style: Styles.textStyle25(context).copyWith(fontWeight: FontWeight.w600,color: Colors.black),),
              ),
              const DefaultFormField(borderColor: Colors.black,prefixIconColor: AppConstant.defaultColor,
              hint: 'Password',prefix: Icons.lock_outline,suffix: null,suffixIconColor: null,hintColor: AppConstant.primaryColor,
              ),
               SignInButton(
                onPress: (){},
                buttonColor: AppConstant.defaultColor,
                textColor: AppConstant.primaryColor,
                buttonWidth: double.infinity,
                buttonText: 'Continue',
                buttonHeight: MediaQuery.of(context).size.width *0.15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
