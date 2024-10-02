import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/core/bloc/profile_cubit/profile_states.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  ProfileCubit() : super(ProfileInitState());

  static ProfileCubit get(context) => BlocProvider.of(context);
}