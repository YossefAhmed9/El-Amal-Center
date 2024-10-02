import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/widgets/login_widgets/password_form_field.dart';
import 'package:markaz_elamal/core/widgets/login_widgets/sign_in_button.dart';
import '../../bloc/auth_cubit/auth_cubit.dart';
import '../../utils/constant.dart';
import '../../utils/styles.dart';
import 'default_form_field.dart';
import 'forgot_password_button.dart';
import 'logo_and_name.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 50, left: 40),
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
              width: MediaQuery.of(context).size.width  *0.85,
              height: MediaQuery.of(context).size.height * 0.50,
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
                      borderRadius: BorderRadius.circular(40),
                  ),
                  child:  SingleChildScrollView(
                    child: Column(
                      children: [
                        const LogoAndName(),
                        const DefaultFormField(
                          borderColor: AppConstant.primaryColor,
                          prefixIconColor: AppConstant.primaryColor,
                        prefix: Icons.mail_outline,hint: 'Email',
                          suffixIconColor: null,suffix: null,
                          hintColor: AppConstant.primaryColor,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const PasswordFormField(),
                        SignInButton(
                          onPress: (){

                            AuthCubit.get(context).navigateToHome(context);
                          },
                          buttonColor: AppConstant.primaryColor,
                          textColor: AppConstant.defaultColor,
                          buttonWidth: MediaQuery.of(context).size.width *0.7,
                          buttonText: 'Sign In',
                          buttonHeight: MediaQuery.of(context).size.height*0.05,
                        ),
                        const ForgotPasswordButton(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
