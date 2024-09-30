import 'package:flutter/material.dart';

import '../../utils/constant.dart';
import '../../utils/styles.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List catgories = [
      'Speech',
      'Autism',
      'Learning',
      'Speech',
      'Autism',
      'Learning',
    ];
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catgories.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppConstant.defaultColor),
                child: Center(
                    child: Text(
                      '${catgories[index]}',
                      style: Styles.textStyle25(context).copyWith(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            );
          }),
    );
  }
}
