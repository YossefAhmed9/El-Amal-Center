import 'package:flutter/material.dart';

import '../../utils/constant.dart';
import '../../utils/styles.dart';

class BookDoctorsListView extends StatelessWidget {
  const BookDoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context,index){
            return InkWell(
              enableFeedback: true,
              onTap: (){

              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,height: 150,
                  decoration: BoxDecoration(
                    color: AppConstant.defaultColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Doctor\'s name',style: Styles.textStyle25(context).copyWith(color: Colors.white),),
                            Text('Profession',style: Styles.textStyle18(context).copyWith(color: Colors.grey.shade400),),

                            const Spacer(),
                            const Row(
                              children: [
                                Icon(Icons.star,color: Colors.amberAccent,),
                                Text(' 4.8',style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        Image.asset('assets/images/sara 1.png')
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
