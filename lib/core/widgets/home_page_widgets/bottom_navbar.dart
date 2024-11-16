// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// import '../../utils/constant.dart';
//
// class BottomNavbar extends StatefulWidget {
//   const BottomNavbar({Key? key}) : super(key: key);
//
//   @override
//   State<BottomNavbar> createState() => _BottomNavbarState();
// }
//
// class _BottomNavbarState extends State<BottomNavbar> {
//   int navBarIndex=0;
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       type: BottomNavigationBarType.fixed,
//       items: const [
//         BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.house),label: 'Home',),
//         BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.cubesStacked),label: 'Category'),
//         BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.clock),label: 'Book'),
//         BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.android),label: 'Profile'),
//
//       ],
//       onTap: (int index){
//         navBarIndex=index;
//         print('navbar index = $navBarIndex');
//
//       },
//       selectedItemColor: AppConstant.primaryColor,
//       unselectedItemColor: AppConstant.primaryColor,
//       unselectedFontSize: 12,
//       selectedFontSize: 16,
//       currentIndex: navBarIndex,
//
//       unselectedIconTheme:const IconThemeData(size: 15),
//       backgroundColor: AppConstant.defaultColor,
//
//
//       elevation: 0,
//     );
//   }
// }
