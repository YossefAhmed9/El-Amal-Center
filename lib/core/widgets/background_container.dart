import 'package:flutter/material.dart';

import '../utils/constant.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.65,
        decoration: const BoxDecoration(
          color: AppConstant.primaryColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(65), topLeft: Radius.circular(65)),
        ),
      ),
    );
  }
}
