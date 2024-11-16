import 'package:flutter/material.dart';
import 'package:markaz_elamal/features/success_view/done_payment.dart';

import '../../../core/utils/constant.dart';
import '../../../core/utils/styles.dart';
import '../../../core/widgets/book_doctors/custom_payment_widget.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.defaultColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, left: 15),
                    child: Text(
                      'Payment methods',
                      style: Styles.textStyle35(context).copyWith(
                          fontWeight: FontWeight.w900, color: Colors.black87),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Choose desired payment type. We offer suitable ways for most users.',
                      style: Styles.textStyle14(context).copyWith(
                          fontWeight: FontWeight.w900, color: Colors.black87),
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomPaymentWidget(
                        expireDate: '10/27',
                        lastFourCardNumbers: '1234',
                        paymentImage: 'assets/images/master card.png',
                        borderColor: Colors.blue,
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomPaymentWidget(
                      expireDate: '10/27',
                      lastFourCardNumbers: '1234',
                      paymentImage: 'assets/images/visa.png',
                      borderColor: Colors.grey,
                    ),
                  ),

                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 15),
                      child: Container(
                        decoration: BoxDecoration(color: AppConstant.defaultColor,borderRadius: BorderRadius.circular(15)),
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                            return const PaymentDoneView();
                          }));
                        }, child: const Text('Pay Now',style: TextStyle(color: Colors.white,fontSize: 20),),
                        ),
                      ),
                    ),
                  ),

                ],
              )),
        ]),
      ),
    );
  }
}
