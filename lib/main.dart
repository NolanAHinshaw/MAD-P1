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
<<<<<<< Updated upstream
    const appTitle = 'Meal Planner';
=======
    const appTitle = 'Meal Planner App';
>>>>>>> Stashed changes
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
                    return const LoginPage(firstName: '',);
                  case '/homepage':
<<<<<<< Updated upstream
                    return HomePage(firstName: '',);
=======
                    return HomePage();
                  case '/meal-planner':
                    return MealPlanner();
>>>>>>> Stashed changes
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