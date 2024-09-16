import 'package:flutter/material.dart';

import '../utils/constant.dart';
import '../utils/styles.dart';
import 'form_field.dart';

class FormWithEmailAndPassword extends StatelessWidget {
  const FormWithEmailAndPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 50,left: 40),
          child: SizedBox(
            width: 200,
            height: 72,
            child: Text('Let\'s start with sign in',
                style: Styles.textStyle22Bold(context).copyWith(
                    color: AppConstant.primaryColor, fontFamily: 'Poppins')),
          ),
        ),
        Center(
          child: Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            width: 360,
            height: MediaQuery.of(context).size.height*0.42,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: AppConstant.primaryColor),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                height: 200,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: AppConstant.defaultColor,
                    borderRadius: BorderRadius.circular(40)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/markaz_elamal.png',height: 94.03,width: 74,),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        'Markaz ElAmal',
                        style: Styles.textStyle16(context)
                            .copyWith(color: Colors.white, fontFamily: 'Peralta'),
                      ),
                    ),
                    DefaultFormField(),
                    SizedBox(height: 20,),
                    DefaultFormField(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
