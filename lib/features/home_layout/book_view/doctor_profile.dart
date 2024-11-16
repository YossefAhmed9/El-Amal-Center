import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/utils/constant.dart';
import 'package:markaz_elamal/features/chat_view/chat_view.dart';
import 'package:markaz_elamal/features/success_view/done_payment.dart';
import 'package:markaz_elamal/features/success_view/success_view.dart';

import 'payment_screen.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.defaultColor,
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

      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child:Image.asset('assets/images/sara 1.png',height: 140,scale: 0.5,),
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height *0.3,
                  decoration: const BoxDecoration(
                    color: AppConstant.defaultColor,
                    borderRadius: BorderRadius.only(
                        topRight:Radius.circular(35),
                        topLeft: Radius.circular(35)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text('12 years of experience',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height *0.50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight:Radius.circular(35),
                          topLeft: Radius.circular(35),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Figma ipsum component variant main layer. Library figma resizing invite mask arrow ipsum community. Prototype main ellipse opacity community auto flatten link. List device rectangle figjam subtract. Font pixel selection image rotate. Outline asset arrow library flatten blur. Style plugin union edit align.',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 15),
                                  child: Container(
                                    decoration: BoxDecoration(color: AppConstant.defaultColor,borderRadius: BorderRadius.circular(15)),
                                    child: TextButton(onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                        return const PaymentScreen();
                                      }));
                                    }, child: const Text('Book Now',style: TextStyle(color: Colors.white,fontSize: 20),),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 15),
                                  child: Container(
                                    decoration: BoxDecoration(color: AppConstant.defaultColor,borderRadius: BorderRadius.circular(15)),
                                    child: TextButton(onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                        return const ChatView();
                                      }));
                                    }, child: const Text('Send Message',style: TextStyle(color: Colors.white,fontSize: 20),),
                                    ),
                                  ),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),

                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
