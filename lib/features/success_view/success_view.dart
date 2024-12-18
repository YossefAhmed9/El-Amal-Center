import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/utils/constant.dart';

import '../../core/utils/styles.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((value){
    Navigator.pop(context);
    });

    return Scaffold(
      body:  SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/success.png'),
              Text('Congratulations',style: Styles.textStyle35(context).copyWith(fontWeight: FontWeight.w900,color: AppConstant.defaultColor),),
               Text('Your Registration Is Success',style: Styles.textStyle20(context).copyWith(fontWeight: FontWeight.w400,),),
              Text('Hope you\'r having a good day and better health',style: Styles.textStyle20(context),textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}
