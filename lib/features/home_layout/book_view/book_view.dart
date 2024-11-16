import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:markaz_elamal/core/bloc/book_cubit/book_states.dart';
import 'package:markaz_elamal/core/utils/constant.dart';
import 'package:markaz_elamal/core/utils/styles.dart';
import 'package:markaz_elamal/core/widgets/home_page_widgets/see_more.dart';

import '../../../core/bloc/book_cubit/book_cubit.dart';
import '../../../core/widgets/book_doctors/book_doctors_list_view.dart';
import '../../../core/widgets/book_doctors/popular_doctors_list_view.dart';
import '../category_view/search_category.dart';
import 'search_doctors.dart';
import 'all_popular_doctors.dart';


class BookView extends StatelessWidget {
  const BookView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookCubit, BookStates>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            backgroundColor: AppConstant.defaultColor,
            actions: [
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const SearchDoctors();
                }));
              }, icon: const Icon(FontAwesomeIcons.magnifyingGlass,color: Colors.white,))
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  //popular doctors
                  SizedBox(
                    height: 250,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text('Popular doctors',style: Styles.textStyle25(context),),
                            ),
                            const Spacer(),
                            SeeMore(onPress: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const AllPopularDoctors()));
                            }),
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 200,
                          child: const PopularDoctorsListView(),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(color: Colors.grey,width: double.infinity,height: 2,),
                  ),
                  //Book a doctor
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text('Book a doctor',style: Styles.textStyle22Bold(context),),
                      SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height *0.8,
                        child: const BookDoctorsListView(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
