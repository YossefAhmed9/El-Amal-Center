import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/bloc/category_cubit/category_cubit.dart';
import '../../../core/bloc/category_cubit/category_states.dart';
import '../../../core/widgets/book_doctors/custom_search_bar.dart';

class SearchCategory extends StatelessWidget {
  const SearchCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List categoryList = [];
    return BlocConsumer<CategoryCubit, CategoryStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                const CustomSearchBar(hint: 'Search Category name',),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child:categoryList.isEmpty ? Center(
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
