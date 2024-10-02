import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:markaz_elamal/core/utils/styles.dart';
import 'package:markaz_elamal/core/widgets/home_page_widgets/search_bar.dart';
import 'package:markaz_elamal/core/widgets/home_page_widgets/see_more.dart';

import '../../../core/bloc/home_cubit/home_cubit.dart';
import '../../../core/bloc/home_cubit/home_states.dart';
import '../../../core/widgets/home_page_widgets/categories_list_view.dart';
import '../../../core/widgets/home_page_widgets/custome_app_bar.dart';
import '../../../core/widgets/home_page_widgets/doctors_list_view.dart';
import '../category_view/category_view.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {
      },
      builder: (context, state) {
        HomeCubit cubit=HomeCubit.get(context);
        return Scaffold(
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
                    padding: const EdgeInsets.only(left: 21, top: 5, bottom: 5),
                    child: Row(
                      children: [
                        Text(
                          'Category',
                          style: Styles.textStyle25(context),
                        ),
                        const Spacer(),
                        SeeMore(onPress: () {

                          cubit.GoToCategory();
                          print(cubit.navBarIndex);
                        }),
                      ],
                    ),
                  ),
                  const CategoriesListView(),
                  Padding(
                    padding: const EdgeInsets.only(left: 21, top: 5, bottom: 5),
                    child: Row(
                      children: [
                        Text(
                          'Doctors',
                          style: Styles.textStyle25(context),
                        ),
                        const Spacer(),
                        SeeMore(onPress: () {}),
                      ],
                    ),
                  ),
                  const DoctorsListView(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
