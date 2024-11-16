import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../utils/constant.dart';
import '../login_widgets/default_form_field.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  double sliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 33, left: 24, bottom: 30),
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
              onPressed: () {
                showBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppConstant.primaryColor),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // Text('Here will be the widgets that will handle the search adjustments, like Radio buttons, pull down menus sliders like this one, which by the way not working😂',
                                // style: TextStyle(fontSize: 25),
                                // ),
                                Text(sliderValue.round().toString(),
                                  style: const TextStyle(fontSize: 20,),),
                                Slider(
                                  inactiveColor: Colors.blue.shade100,
                                  value: sliderValue,
                                  onChanged: (double value) {
                                    setState(() {
                                      sliderValue=value;
                                    });
                                    if (kDebugMode) {
                                      print(sliderValue);
                                    }
                                  },
                                  //allowedInteraction: SliderInteraction.tapAndSlide,
                                  min: 20,
                                  activeColor: AppConstant.defaultColor,
                                  max: 150,
                                  label:sliderValue.round().toString() ,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              },
              icon: const Icon(
                Icons.tune_sharp, size: 35,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );

  }
}
