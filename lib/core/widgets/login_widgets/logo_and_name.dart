import 'package:flutter/material.dart';

import '../../utils/styles.dart';

class LogoAndName extends StatelessWidget {
  const LogoAndName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //الصورة
        Image.asset(
          'assets/images/markaz_elamal.png',
          height: 94.03,
          width: 74,
        ),
        //الكلام نفسه
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(
            'Markaz ElAmal',
            style: Styles.textStyle16(context).copyWith(
                color: Colors.white, fontFamily: 'Peralta'),
          ),
        ),
      ],
    );
  }
}
