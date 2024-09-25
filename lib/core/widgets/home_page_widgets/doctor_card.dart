import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:markaz_elamal/core/utils/constant.dart';
import 'package:markaz_elamal/core/utils/styles.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [

              Container(width: 293,height: 122,
                decoration: BoxDecoration(
                    color: AppConstant.primaryColor,
                    borderRadius: BorderRadius.circular(4),
                  
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(color: AppConstant.defaultColor,
                    onPressed: (){},
                    icon: Icon(
                      Icons.favorite,
                      color: AppConstant.defaultColor,

                    ),
                ),
              ),
              Center(child: Image.asset('assets/images/sara 1.png',scale: 1.1,)),
              Padding(
                padding: const EdgeInsets.only(top: 89.0),
                child: Container(
                  decoration: BoxDecoration(color: AppConstant.defaultColor,borderRadius: BorderRadius.circular(16)),
                  width: 70,height: 30,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.star,color: Colors.amberAccent,),
                        Text(' 4.8',style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text('Dr: Sara Selem',style: Styles.textStyle20(context).copyWith(color: AppConstant.primaryColor,fontWeight: FontWeight.w600),),
          ),
          Text('12 experinece',style: Styles.textStyle16(context).copyWith(color: Color(0XFF9ECAE3),fontFamily: 'Poppins'),),
          Text('\$ 12.99',style: Styles.textStyle16(context).copyWith(fontWeight: FontWeight.w600,fontFamily: 'Poppins'),),
          Text('Know more',style: Styles.textStyle16(context).copyWith(color: Color(0XFF9ECAE3),fontFamily: 'Poppins'),),

        ],
      ),
    );
  }
}
