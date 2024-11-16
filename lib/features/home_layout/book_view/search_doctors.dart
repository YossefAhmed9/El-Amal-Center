import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/core/bloc/book_cubit/book_cubit.dart';
import 'package:markaz_elamal/core/bloc/book_cubit/book_cubit.dart';

import '../../../core/bloc/book_cubit/book_states.dart';
import '../../../core/widgets/book_doctors/custom_search_bar.dart';

class SearchDoctors extends StatelessWidget {
  const SearchDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    List doctorsList = [];

    return BlocConsumer<BookCubit, BookStates>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                const CustomSearchBar(hint: 'Search Doctor\'s name',),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child:doctorsList.isEmpty ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search_off,size: 200,),
                        Text('No Search Results',style: TextStyle(fontSize: 30,fontFamily: 'Peralta'),),
                      ],
                      ),
                    ) : ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 10,
                        shrinkWrap: true,

                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height *0.2,
                              decoration: BoxDecoration(color: Colors.tealAccent),
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
