import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/core/api/dio_helper.dart';
import 'package:markaz_elamal/core/bloc/auth_cubit/auth_cubit.dart';
import 'package:markaz_elamal/core/bloc/home_cubit/home_cubit.dart';
import 'package:markaz_elamal/core/utils/constant.dart';
import 'package:markaz_elamal/features/home_layout/home_layout.dart';
import 'core/utils/app_router.dart';
import 'core/utils/dependency_injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();


  DioHelper.init();
  ServicesLocator.init();
  runApp(DevicePreview(
    enabled: kDebugMode,
    builder: (context) => const HospitalApp(), // Wrap your app
  ),);
 // FlutterNativeSplash.preserve(widgetsBinding:WidgetsFlutterBinding.ensureInitialized());

}

class HospitalApp extends StatelessWidget {
  const HospitalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(create: (context)=>HomeCubit()),

        BlocProvider(create: (context)=>AuthCubit()),
      ],
      child: MaterialApp(

        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        onGenerateRoute: AppRouter.generateRoute,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: AppConstant.primaryColor,),
        ),
        home: const HomeLayout(),
      ),
    );
  }
}
