import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/core/utils/constant.dart';
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
        return Scaffold(

          backgroundColor: AppConstant.defaultColor,
          body:Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height *0.65,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(25) ,
                      topRight: Radius.circular(25),
                  ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(150)),clipBehavior: Clip.antiAliasWithSaveLayer,

                    child: Image.asset(
                        'assets/images/moon.jpg',width: 170,height: 170,
                        errorBuilder: (BuildContext context,
                            Object exception,
                            StackTrace? stackTrace) {
                          return Image.asset('assets/images/error image.png',width: 50,height: 50,);

                        }
                    ),
                  ),
                  const Text('Name:Yossef Ahmed Abd El-Raheem ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  const Text('Email: yossefahmed209@gmail.com',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  const Text('National ID: 30103202500593',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  const Text('Gender:male ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  const Text('Phone: +201024922571',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),

                ],
              ),
            ),
          ),
        );;
      },
    );
  }
}
