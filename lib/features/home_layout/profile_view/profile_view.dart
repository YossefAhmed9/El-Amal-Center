import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/bloc/profile_cubit/profile_cubit.dart';
import '../../../core/bloc/profile_cubit/profile_states.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileStates>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Container();
      },
    );
  }
}
