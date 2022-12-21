import 'package:feuerbase_ex/d.dart';
import 'package:feuerbase_ex/modules/login/login_screen.dart';
import 'package:feuerbase_ex/modules/register/register_screen.dart';
import 'package:feuerbase_ex/modules/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          enableLog: true,
          initialRoute: Routes.LOGIN,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          //home: RegisterScreen()
          getPages: AppPages.routes,
        );
      },
    );
  }
}
