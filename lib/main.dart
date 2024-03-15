import 'package:flutter/material.dart';
import 'package:mealplannerapp/pages/mealplanner.dart';
import 'package:mealplannerapp/pages/signup.dart';
import 'package:mealplannerapp/pages/login.dart';
import 'package:mealplannerapp/pages/homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Meal Planner';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(appTitle),
          ),
          body: Navigator(
            onGenerateRoute: (settings) {
              return MaterialPageRoute(builder: (context) {
                switch (settings.name) {
                  case '/registration':
                    return const RegistrationPage();
                  case '/login':
                    return const LoginPage(
                      firstName: '',
                    );
                  case '/homepage':
                    return HomePage(
                      firstName: '',
                    );
                  default:
                    // Default to RegistrationPage if the route is not recognized
                    return const RegistrationPage();
                }
              });
            },
          )
          // LoginPage()
          ),
    );
  }
}

// Create a Form widget.