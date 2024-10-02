import 'package:flutter/material.dart';

import '../../utils/styles.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({Key? key, required this.onPress}) : super(key: key);
final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          'See All',
          style: Styles.textStyle25(context)
              .copyWith(fontWeight: FontWeight.w400),
        ),
        IconButton(
            onPressed: onPress,
            icon: const Icon(
              Icons.arrow_forward,
              size: 30,
            ))
      ],
    );

  }
}
