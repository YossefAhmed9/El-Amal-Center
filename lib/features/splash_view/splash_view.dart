import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/utils/constant.dart';
import 'package:markaz_elamal/core/widgets/login_widgets/form.dart';
import 'package:markaz_elamal/core/widgets/login_widgets/logo_and_name.dart';
import 'package:markaz_elamal/features/authentication_view/authincation.dart';

import '../../core/utils/styles.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1)).then((value){
      Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (context) =>const Authentication()), (route) {
        return false;
      });
    });
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: AppConstant.primaryColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            //الصورة
            Image.asset(
              'assets/images/markaz_elamal.png',
              height: 226.17,
              width: 178,
            ),
            //الكلام نفسه
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Markaz ElAmal',
                style: Styles.textStyle16(context).copyWith(
                    color: AppConstant.defaultColor, fontFamily: 'Peralta'),
              ),
            ),
            const CircularProgressIndicator(color: AppConstant.defaultColor,),
          ],
        ),
      ),
    );
  }
}
