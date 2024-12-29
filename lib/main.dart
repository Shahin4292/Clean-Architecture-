import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mvvm_architucture/res/get_localization/language.dart';
import 'package:mvvm_architucture/res/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      translations: LanguageLocalization(),
      locale: Locale('ur , PK'),
      fallbackLocale: Locale('en , US'),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
