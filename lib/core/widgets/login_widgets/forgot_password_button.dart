import 'package:flutter/material.dart';

import '../../utils/styles.dart';
import 'forget_password_bottom_sheet.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return const ForgetPasswordBottomSheet();
            });
      },
      child: Text(
        'Forgot password?',
        style: Styles.textStyle16(context).copyWith(
            fontSize: MediaQuery.of(context).size.height *0.015,
            fontFamily: 'Poppins').copyWith(
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
