import 'package:flutter/material.dart';

import '../../utils/styles.dart';

class CustomPaymentWidget extends StatelessWidget {
  const CustomPaymentWidget({Key? key, required this.paymentImage, required this.expireDate, required this.lastFourCardNumbers, required this.borderColor}) : super(key: key);
final String paymentImage;
final String expireDate;
final String lastFourCardNumbers;
final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                width: 3,
                color: borderColor,
              ),
            ),
            child:Row(
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      paymentImage, // Add a Visa logo to your assets folder
                      height: 50.0,
                    ),
                    Text(
                      'Expires ${expireDate}',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  '**** **** **** ${lastFourCardNumbers}',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            )
    );
  }
}
