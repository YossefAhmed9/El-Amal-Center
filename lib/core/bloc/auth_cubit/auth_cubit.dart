import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/features/home_layout/home_layout.dart';

import '../../../features/home_layout/home_page/home_page_view.dart';
import 'auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitState());

  static AuthCubit get(context) => BlocProvider.of(context);

  void navigateToHome(BuildContext context){
    Navigator.push(
      context, MaterialPageRoute(
        builder: (context) =>const HomeLayout()),
    );
    emit(GoToHome());
  }



}