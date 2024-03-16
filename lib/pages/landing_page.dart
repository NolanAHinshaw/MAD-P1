import 'package:flutter/material.dart';
import 'package:mealplannerapp/pages/signup.dart';

class LandingState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Landing Page',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/landing_page.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Perfect your',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            // Header Text
            const Text(
              'Meals/Recipes',
              style: TextStyle(
                fontSize: 39,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            // Description Text
            const Text(
              'View and Save recipes from master chefs around the world and the ingredients needed to create these recipes at home!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20), // Add spacing between text and button
            // Button to navigate to signup page
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistrationPage()),
                  );
                },
                child: Text('Sign Up')),
          ],
        ),
      ),
    );
  }
}

class LandingPage extends StatefulWidget {
  final String firstName;
  const LandingPage({super.key, required this.firstName});
  @override
  LandingState createState() {
    return LandingState();
  }
}
