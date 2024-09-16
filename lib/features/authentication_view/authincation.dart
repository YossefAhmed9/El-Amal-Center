import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/widgets/background_container.dart';
import '../../core/widgets/form.dart';
import '../../core/utils/constant.dart';

class Authentication extends StatelessWidget {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppConstant.defaultColor,
      body: SafeArea(
        child:  Stack(
          children: [
            BackgroundContainer(),
            FormWithEmailAndPassword(),
          ],
        ),
      ),
    );
  }
}
