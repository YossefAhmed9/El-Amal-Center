import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/utils/constant.dart';

import '../../core/utils/styles.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/success.png'),
Text('Congratulations',style: Styles.textStyle35(context).copyWith(fontWeight: FontWeight.w900,color: AppConstant.defaultColor),),
Text('Your Registration Is Success',style: Styles.textStyle20(context).copyWith(fontWeight: FontWeight.w400,),),
Text('Welcome to our app',style: Styles.textStyle20(context),),
          ],
        ),
      ),
    );
  }
}
