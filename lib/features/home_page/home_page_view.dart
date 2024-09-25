import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:markaz_elamal/core/utils/constant.dart';
import 'package:markaz_elamal/core/utils/styles.dart';
import 'package:markaz_elamal/core/widgets/home_page_widgets/search_bar.dart';
import 'package:markaz_elamal/core/widgets/login_widgets/default_form_field.dart';

import '../../core/widgets/home_page_widgets/custome_app_bar.dart';
import '../../core/widgets/home_page_widgets/doctor_card.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

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
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.house),label: 'Home',),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.cubesStacked),label: 'Category'),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.clock),label: 'Book'),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.android),label: 'Profile'),

      ],


      selectedItemColor: AppConstant.primaryColor,
      unselectedItemColor: AppConstant.primaryColor,
      unselectedFontSize: 12,

      selectedFontSize: 16,
      currentIndex: 1,
        unselectedIconTheme: IconThemeData(size: 15),

        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: AppConstant.defaultColor,

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const CustomeAppBar(),
              const CustomSearchBar(),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset('assets/images/reading-hard 1.png')),
              Padding(
                padding: const EdgeInsets.only(left: 21, top: 25, bottom: 15),
                child: Row(
                  children: [
                    Text(
                      'Category',
                      style: Styles.textStyle25(context),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Text(
                          'See all',
                          style: Styles.textStyle25(context)
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward,
                              size: 30,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
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
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21, top: 25, bottom: 15),
                child: Row(
                  children: [
                    Text(
                      'Doctors',
                      style: Styles.textStyle25(context),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Text(
                          'See all',
                          style: Styles.textStyle25(context)
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward,
                              size: 30,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 318,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 12,bottom: 15),
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          width: 270,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppConstant.defaultColor),
                          child: const DoctorCard(),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
