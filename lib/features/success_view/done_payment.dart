import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/utils/constant.dart';

import '../../core/utils/styles.dart';
import '../home_layout/home_layout.dart';

class PaymentDoneView extends StatelessWidget {
  const PaymentDoneView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((value){

      Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (context) => const HomeLayout()), (route) {
        return false;
      });
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
              Text('Your Appointment is Success',style: Styles.textStyle25(context).copyWith(fontWeight: FontWeight.w400,),),
            ],
          ),
        ),
      ),
    );
  }
}
