import 'package:flutter/material.dart';
import 'package:my_ev/screens/main_screen.dart';
import 'package:my_ev/screens/otp_screen.dart';
import 'package:my_ev/screens/registration_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meals App",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        accentColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1), // background of screen
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: const TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
              ),
            ),
      ),
      //home: CategoriesScreen(), //we can comment this and add '/' route in routes for homepage
      routes: {
        '/' : (ctx) => RegisterScreen(),
        OtPscreen.routeName : (ctx) => OtPscreen(),
        MainScreen.routeName: (ctx) => MainScreen(),
      },
    );
  }
}
