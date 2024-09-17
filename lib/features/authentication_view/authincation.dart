import 'package:flutter/material.dart';
import '../../core/utils/constant.dart';
import '../../core/widgets/login_widgets/background_container.dart';
import '../../core/widgets/login_widgets/form.dart';
import '../../core/widgets/login_widgets/no_account.dart';

class Authentication extends StatelessWidget {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: AppConstant.defaultColor,

      body: SafeArea(
        child:  Stack(
          children: [
            BackgroundContainer(),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                LoginForm(),
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
