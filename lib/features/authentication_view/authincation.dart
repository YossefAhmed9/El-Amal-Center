import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/utils/constant.dart';
import '../../core/widgets/login/background_container.dart';
import '../../core/widgets/login/form.dart';
import '../../core/widgets/login/no_account.dart';
import '../../core/widgets/login/sign_in_button.dart';

class Authentication extends StatelessWidget {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppConstant.defaultColor,
      body: SafeArea(
        child:  Stack(
          children: [
            BackgroundContainer(),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FormWithEmailAndPassword(),
                Spacer(),
                NoAccount(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
