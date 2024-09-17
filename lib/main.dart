import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/utils/constant.dart';
import 'core/utils/app_router.dart';
import 'core/utils/dependency_injection.dart';
import 'features/authentication_view/authincation.dart';
import 'features/register_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServicesLocator.init();
  runApp(HospitalApp());
}

class HospitalApp extends StatelessWidget {
  const HospitalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: "",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true,),
      home: const Authentication(),
    );
  }
}
