import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/constant.dart';
import '../login_widgets/default_form_field.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 33, left: 24,bottom: 30),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(),
              height: 50,
              child: const DefaultFormField(
                borderColor: AppConstant.defaultColor,
                prefixIconColor: AppConstant.defaultColor,
                suffixIconColor: null,
                hint: 'Search',
                suffix: null,
                prefix: FontAwesomeIcons.magnifyingGlass,
                hintColor: AppConstant.defaultColor,
              ),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: AppConstant.defaultColor,
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.tune_sharp,size: 35,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );

  }
}
