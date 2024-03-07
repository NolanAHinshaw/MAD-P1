import 'package:flutter/material.dart';
import 'package:mealplannerapp/pages/signup.dart';
import 'package:mealplannerapp/pages/login.dart';
import 'package:mealplannerapp/pages/homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Landing Page';
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
                    return const LoginPage();
                  case '/homepage':
                    return HomePage();
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