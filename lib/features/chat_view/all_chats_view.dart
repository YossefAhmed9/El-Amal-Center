import 'package:flutter/material.dart';

import '../../core/utils/constant.dart';

class AllChatsView extends StatelessWidget {
  const AllChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.defaultColor,
        title: const Text(
          'Chats',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),

      body:SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                child: ListView.separated(
                  separatorBuilder: (context,index)=>Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 5),
                    child: Container(color: Colors.black45,width: double.infinity,height: 1,),
                  ),
                  shrinkWrap: true,
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                              radius: 45,
                              child: Image.asset('assets/images/sara 1.png'),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Doctor\'s name',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                                Text('Last message',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                              ],
                            ),

                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('12:45 am'),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            ),
          ],
        ),
      ),
    );
  }
}
