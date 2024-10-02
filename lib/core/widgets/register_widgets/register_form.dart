import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/widgets/login_widgets/password_form_field.dart';
import 'package:markaz_elamal/core/widgets/login_widgets/sign_in_button.dart';
import 'package:markaz_elamal/core/widgets/register_widgets/name_form_field.dart';
import 'package:markaz_elamal/features/success_view/success_view.dart';
import '../../utils/constant.dart';
import '../../utils/styles.dart';
import '../login_widgets/default_form_field.dart';
import '../login_widgets/forget_password_bottom_sheet.dart';
import '../login_widgets/logo_and_name.dart';


class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

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
            child: Text('Let\'s start with sign up',
                style: Styles.textStyle22Bold(context).copyWith(
                    color: AppConstant.primaryColor, fontFamily: 'Poppins')),
          ),
        ),
        Center(
          child: Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            width: 360,
            height: MediaQuery.of(context).size.height * 0.70,
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
                child:  Column(
                  children: [
                    const LogoAndName(),
                    const NameFormField(borderColor: AppConstant.primaryColor, iconColor: AppConstant.primaryColor),
                    const DefaultFormField(
                      borderColor: AppConstant.primaryColor,
                      prefixIconColor: AppConstant.primaryColor,
                      hint: 'Email',
                      prefix: Icons.mail_outline,
                      suffix: null,
                      suffixIconColor: null,
                      hintColor: AppConstant.primaryColor,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: DefaultFormField(
                          borderColor: AppConstant.primaryColor,
                          prefixIconColor: AppConstant.primaryColor,
                          suffixIconColor: null,
                          hint: 'Phone',
                          suffix: null,
                          prefix: Icons.phone_outlined,
                        hintColor: AppConstant.primaryColor,
                      ),
                    ),

                    const SizedBox(
                      height: 16,
                    ),
                    const PasswordFormField(),
                    SignInButton(
                      onPress: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>const SuccessView()
                       ));

                      },
                      buttonColor: AppConstant.primaryColor,
                      textColor: AppConstant.defaultColor,
                      buttonWidth: 300,
                      buttonText: 'Sign up',
                      buttonHeight: 45,
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
