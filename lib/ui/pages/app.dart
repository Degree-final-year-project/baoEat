import 'package:find_food_app/core/router/route.dart';
import 'package:find_food_app/ui/shared/themes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyAppTheme.lightTheme,
      initialRoute: MyRoute.initialRouteName,
      routes: MyRoute.routes,
      onGenerateRoute: MyRoute.generateRoute,
      onUnknownRoute: MyRoute.unknownRoute,
    );
  }
}
