import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/constant.dart';
import '../../utils/styles.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 29.0,top: 16),
          child: Image.asset(AppConstant.logoPath,width: 24,height: 30,),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 32.0,left: 9),
          child: Text(
            AppConstant.centerName,
            style: Styles.textStyle16(context).copyWith(color: Colors.black,textBaseline:TextBaseline.alphabetic ),

          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(top:22.0),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(color: AppConstant.defaultColor,borderRadius: BorderRadius.circular(10)),

                child: IconButton(onPressed: (){}, icon:const Icon( FontAwesomeIcons.bell,color: Colors.white,),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(color: AppConstant.defaultColor,borderRadius: BorderRadius.circular(10)),

                  child: IconButton(onPressed: (){}, icon:const Icon( FontAwesomeIcons.message,color: Colors.white,size: 20,),),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
