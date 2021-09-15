import 'package:find_food_app/ui/pages/login/forget_password.dart';
import 'package:find_food_app/ui/pages/login/login.dart';
import 'package:find_food_app/ui/pages/login/login_signup.dart';
import 'package:find_food_app/ui/pages/main/main.dart';
import 'package:find_food_app/ui/pages/profile/edit_info.dart';
import 'package:find_food_app/ui/pages/register/register.dart';
import 'package:find_food_app/ui/pages/restaurant/add_restaurant.dart';
import 'package:flutter/material.dart';

class MyRoute {
  static bool isLogin = false;
  static String initialRouteName = isLogin ? MyMainScreen.routeName : MyLoginScreen.routeName;

  // router map
  static final Map<String, WidgetBuilder> routes = {
    MyMainScreen.routeName: (ctx) => MyMainScreen(),
    MyEditInfoScreen.routeName: (ctx) => MyEditInfoScreen(),
    MyAddRestaurantScreen.routeName: (ctx) => MyAddRestaurantScreen(),
    MyLoginScreen.routeName: (ctx) => MyLoginScreen(),
    MyLoginSignupScreen.routeName: (ctx) => MyLoginSignupScreen(),
    MyRegisterScreen.routeName: (ctx) => MyRegisterScreen(),
    MyForgetPasswordScreen.routeName: (ctx) => MyForgetPasswordScreen(),
  };

  //route factory
  static final RouteFactory  generateRoute = (settings) {
    switch(settings.name) {
      case '/add-restaurant':
        return MaterialPageRoute(builder: (context) => MyAddRestaurantScreen());
    }
  };
  // unknown route
  static final RouteFactory unknownRoute = (settings) => null;
}