import 'package:flutter/material.dart';

import '../../utils/constant.dart';
import '../../utils/styles.dart';

class PopularDoctorsListView extends StatelessWidget {
  const PopularDoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,

        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 150,height: 50,
              decoration: BoxDecoration(
                color: AppConstant.defaultColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Image.asset('assets/images/sara 1.png'),
                  Text('Doctor\'s name',style: Styles.textStyle14(context).copyWith(color: Colors.white),),
                  Text('Experience years',style: Styles.textStyle14(context).copyWith(color: Colors.white),),
                  Text('⭐⭐⭐⭐⭐',style: Styles.textStyle14(context).copyWith(color: Colors.white),),

                ],
              ),
            ),
          );
        });
  }
}
