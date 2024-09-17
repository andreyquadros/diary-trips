import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_diary/controller/countries_controller.dart';
import 'package:travel_diary/routes/app_routes.dart';
import 'package:travel_diary/views/trips_page.dart';

import 'firebase_options.dart';


Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final CountriesController countriesController = Get.put(CountriesController());

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Diário de Viagens',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    initialRoute: AppRoutes.loginPage,
    routes: AppRoutes().define(),
  ));
}