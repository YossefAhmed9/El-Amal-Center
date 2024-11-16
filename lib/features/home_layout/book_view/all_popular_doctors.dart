import 'package:flutter/material.dart';

import '../../../core/utils/constant.dart';
import '../../../core/utils/styles.dart';

class AllPopularDoctors extends StatelessWidget {
  const AllPopularDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Popular Doctors',style: TextStyle(color: Colors.white),),
        backgroundColor: AppConstant.defaultColor,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,),onPressed: (){
          Navigator.pop(context);
        },),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child:  ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,height: 200,
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
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
