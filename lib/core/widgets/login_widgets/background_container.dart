import 'package:flutter/material.dart';

import '../../utils/constant.dart';


class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children:[
        Container(
          height: MediaQuery.of(context).size.height * 0.65,
          decoration: const BoxDecoration(
            color: AppConstant.primaryColor,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(65), topLeft: Radius.circular(65)),
          ),
        ),
      ]
    );
  }
}
