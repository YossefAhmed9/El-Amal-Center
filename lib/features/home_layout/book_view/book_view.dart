import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/core/bloc/book_cubit/book_states.dart';

import '../../../core/bloc/book_cubit/book_cubit.dart';


class BookView extends StatelessWidget {
  const BookView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookCubit, BookStates>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Container();
      },
    );
  }
}
