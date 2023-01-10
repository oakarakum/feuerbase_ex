import 'package:feuerbase_ex/app_binding.dart';
import 'package:feuerbase_ex/di.dart';
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
          initialRoute: Routes.SPLASH,
          initialBinding: AppBinding(),
          getPages: AppPages.routes,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          //home: RegisterScreen()
        );
      },
    );
  }
}
