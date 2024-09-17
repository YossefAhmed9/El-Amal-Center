import 'package:flutter/material.dart';

import '../../utils/styles.dart';
import 'forget_password_bottom_sheet.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({Key? key}) : super(key: key);

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
        style: Styles.textStyle16(context)
            .copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
