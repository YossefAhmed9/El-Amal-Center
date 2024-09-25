import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/widgets/login_widgets/password_form_field.dart';
import 'package:markaz_elamal/core/widgets/login_widgets/sign_in_button.dart';
import '../../utils/constant.dart';
import '../../utils/styles.dart';
import 'email_form_field.dart';
import 'forget_password_bottom_sheet.dart';
import 'forgot_password_button.dart';
import 'logo_and_name.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

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
                child: const Column(
                  children: [
                    LogoAndName(),
                    EmailFormField(borderColor: AppConstant.primaryColor,iconColor: AppConstant.primaryColor,),
                    SizedBox(
                      height: 16,
                    ),
                    PasswordFormField(),
                    SignInButton(
                      buttonColor: AppConstant.primaryColor,
                      textColor: AppConstant.defaultColor,
                      buttonWidth: 300,
                      buttonText: 'Sign In',
                      buttonHeight: 45,
                    ),
                    ForgotPasswordButton(),
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