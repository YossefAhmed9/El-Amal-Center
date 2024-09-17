import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/utils/constant.dart';

import '../core/widgets/login_widgets/background_container.dart';
import '../core/widgets/register_widgets/register_form.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: AppConstant.defaultColor,
      body: Stack(
        children:[
          BackgroundContainer(),

          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              RegisterForm(),


            ],
          ),
        ]
      ),
    );
  }
}
