import 'package:flutter/material.dart';
import 'package:mealplannerapp/pages/homepage.dart';

class LoginState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
        ),
        body: Stack(
          children: [
            Form(
              key: _formKey,
              child: Column(children: [
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(hintText: 'Email'),
// The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    RegExp emailRegExp =
                        RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

                    if (!emailRegExp.hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }

                    return null;
                  },
                ),
                TextFormField(
                  controller: _pwController,
                  decoration: const InputDecoration(hintText: 'Password'),
// The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    RegExp passwordRegExp = RegExp(r'^(?=.*[0-9]).{6,}$');

                    if (!passwordRegExp.hasMatch(value)) {
                      return 'Password must have a length greater than 6 and include at least one digit';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ElevatedButton(
                    onPressed: () {
// Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
// If the form is valid, display a snackbar. In the real world,
// you'd often call a server or save the information in a database.
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                HomePage(), //here we need to insert homepage for P1
                          ),
                        );
                      }
                    },
                    child: const Text('Login'),
                  ),
                ),
              ]),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigate back to first route when tapped.
                  Navigator.pop(context);
                },
                child: const Text('Back to Register'),
              ),
            ),
          ],
        ));
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  LoginState createState() {
    return LoginState();
  }
}
