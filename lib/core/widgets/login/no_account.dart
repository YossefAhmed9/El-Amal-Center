import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/utils/constant.dart';

class NoAccount extends StatelessWidget {
  const NoAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Don\'t have an account?',style: TextStyle(color: AppConstant.defaultColor,fontWeight: FontWeight.w700,fontSize: 15),),
        TextButton(
          onPressed: (){},
          child: const Text(
            'Sign Up',
            style: TextStyle(
                color: Colors.black,
                fontSize: 15),
          ),
        ),
      ],
    );
  }
}
