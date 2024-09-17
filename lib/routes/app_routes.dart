import 'package:flutter/material.dart';
import 'package:travel_diary/views/countries_details_page.dart';
import 'package:travel_diary/views/trips_page.dart';

import '../views/forgot_page.dart';
import '../views/login_page.dart';
import '../views/signup_page.dart';

class AppRoutes{
  static const tripsPage = '/tripsPage';
  static const signUpPage = '/signUpPage';
  static const loginPage = '/loginPage';
  static const forgotPage = '/forgotPage';
  //static const countriesDetailPage = '/countriesDatailPage';

  Map<String, WidgetBuilder> define(){
    return {
      tripsPage: (BuildContext context) => TripsPage(),
      signUpPage: (BuildContext context) => SignUpPage(),
      loginPage: (BuildContext context) => LoginPage(),
      forgotPage: (BuildContext context) => ForgotPage(),

    };
  }
}