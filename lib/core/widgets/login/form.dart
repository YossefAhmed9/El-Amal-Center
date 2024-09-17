import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/widgets/login/password_form_field.dart';
import 'package:markaz_elamal/core/widgets/login/sign_in_button.dart';

import '../../utils/constant.dart';
import '../../utils/styles.dart';
import 'email_form_field.dart';
import 'forget_password_bottom_sheet.dart';

class FormWithEmailAndPassword extends StatelessWidget {
  const FormWithEmailAndPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 50, left: 40),
          child: SizedBox(
            width: 200,
            height: 72,
            child: Text('Let\'s start with sign in',
                style: Styles.textStyle22Bold(context).copyWith(
                    color: AppConstant.primaryColor, fontFamily: 'Poppins')),
          ),
        ),
        Center(
          child: Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            width: 360,
            height: MediaQuery.of(context).size.height * 0.47,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: AppConstant.primaryColor),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                height: 200,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: AppConstant.defaultColor,
                    borderRadius: BorderRadius.circular(40)),
                child: Column(
                  children: [
                    //الصورة
                    Image.asset(
                      'assets/images/markaz_elamal.png',
                      height: 94.03,
                      width: 74,
                    ),
                    //الكلام نفسه
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        'Markaz ElAmal',
                        style: Styles.textStyle16(context).copyWith(
                            color: Colors.white, fontFamily: 'Peralta'),
                      ),
                    ),
                    const EmailFormField(borderColor: AppConstant.primaryColor,iconColor: AppConstant.primaryColor,),
                    const SizedBox(
                      height: 16,
                    ),
                    const PasswordFormField(),
                    const SignInButton(
                      buttonColor: AppConstant.primaryColor,
                      textColor: AppConstant.defaultColor,
                      buttonWidth: 300,
                      buttonText: 'Sign In',
                      buttonHeight: 45,
                    ),
                    TextButton(
                      onPressed: () {
                        showBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return const ForgetPasswordBottomSheet();
                            });
                      },
                      child: Text(
                        'Forgot password?',
                        style: Styles.textStyle16(context)
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
