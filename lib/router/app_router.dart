import 'package:flutter/material.dart';
import 'package:octopus_test/ui/home.dart';
import 'package:octopus_test/ui/new_details/news_details.dart';

class AppRouter{
  Route? onGenerateRouter(RouteSettings routerSettings) {
    switch (routerSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case  NewsDetails.id:
        return MaterialPageRoute(builder: (_) => NewsDetails());
      default:
        return null;
    }
  }

}
