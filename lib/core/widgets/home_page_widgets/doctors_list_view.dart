import 'package:flutter/material.dart';

import '../../utils/constant.dart';
import 'doctor_card.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 318,
        width: double.infinity,
        child:ListView.builder(

          physics:const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 12,bottom: 15),
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: 270,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppConstant.defaultColor),
                  child: const DoctorCard(),
                ),
              );
            }),
    );
  }
}
