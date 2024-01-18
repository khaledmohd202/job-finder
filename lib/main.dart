import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_finder/common/constants.dart';
import 'package:job_finder/common/routes.dart';
import 'package:job_finder/screens/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job Finder',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        // colorScheme: ColorScheme.fromSwatch().copyWith(primary: kPrimaryColor, secondary: kSecondaryColor),
      ),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
