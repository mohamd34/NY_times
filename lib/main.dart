import 'package:octopus_test/router/app_router.dart';
import 'package:octopus_test/ui/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final AppRouter _appRouter = AppRouter();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NY times',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: _appRouter.onGenerateRouter,
      // initialRoute: Home.id,
      // routes: {
      //   Home.id: (context) => Home(),
      // },
    );
  }
}


