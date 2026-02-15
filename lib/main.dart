import 'package:ecommerce_app/helper/router.dart';
import 'package:ecommerce_app/views/screens/landing_page.dart';
import 'package:flutter/material.dart';

import 'helper/routes.dart';
import 'views/screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: ThemeData(
        scaffoldBackgroundColor:const Color(0xFFE5E5E5),
        primaryColor: Colors.red,
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black54),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
      onGenerateRoute: onGenerate,
      initialRoute: AppRouters.loginPageRoutes,
    );
  }
}
