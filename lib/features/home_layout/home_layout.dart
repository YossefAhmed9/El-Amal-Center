import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../core/bloc/home_cubit/home_cubit.dart';
import '../../core/bloc/home_cubit/home_states.dart';
import '../../core/utils/constant.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {
      },
      builder: (context, state) {
        var cubit=HomeCubit.get(context);
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.house), label: 'Home',),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.cubesStacked), label: 'Category'),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.check), label: 'Book'),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.user), label: 'Profile'),

            ],
            onTap: (int index) {
                cubit.changeBottomNavBarIndex(index);
            },
            selectedItemColor: AppConstant.primaryColor,
            unselectedItemColor: AppConstant.primaryColor,
            unselectedFontSize: 12,
            selectedFontSize: 16,
            currentIndex: cubit.navBarIndex,
            unselectedIconTheme: const IconThemeData(size: 15),
            backgroundColor: AppConstant.defaultColor,


            elevation: 0,
          ),
          body: cubit.BottomNavBarscreens[cubit.navBarIndex],
        );
      },
    );
  }
}
