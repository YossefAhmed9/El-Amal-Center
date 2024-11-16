import 'package:flutter_bloc/flutter_bloc.dart';

import 'category_states.dart';

class CategoryCubit extends Cubit<CategoryStates> {
  CategoryCubit() : super(CategoryInitState());

  static CategoryCubit get(context) => BlocProvider.of(context);
}