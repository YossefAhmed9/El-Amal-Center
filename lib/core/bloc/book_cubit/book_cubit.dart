import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_states.dart';

class BookCubit extends Cubit<BookStates> {
  BookCubit() : super(BookInitState());

  static BookCubit get(context) => BlocProvider.of(context);


}
