import 'package:flutter/material.dart';
import 'package:mealplannerapp/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key})
      : super(key: key); // Constructor with Key parameter

  @override
  RegistrationState createState() => RegistrationState();
}

// Create a corresponding State class.
// This class holds data related to the form.
class RegistrationState extends State<RegistrationPage> {
// Create a global key that uniquely identifies the Form widget
// and allows validation of the form.
//
// Note: This is a GlobalKey<FormState>,
// not a GlobalKey<MyCustomFormState>.
//create controllers for fields of form and put them into textformfield
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _fnameController = TextEditingController();
  final TextEditingController _lnameController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  Future<void> saveUserInfo(String username, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', username);
    prefs.setString('password', password);
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
// Build a Form widget using the _formKey created above.
    return Scaffold(
      appBar: AppBar(title: const Text('Signup Page')),
      body: Stack(children: [
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(hintText: 'Username'),
// The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _fnameController,
                decoration: const InputDecoration(hintText: 'First Name'),
// The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _lnameController,
                decoration: const InputDecoration(hintText: 'Last Name'),
// The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
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
                  /* regex exp to fulfill requirements: 
              1. password length > 6
              2. password must contain at least 1 digit
              */
                  RegExp passwordRegExp = RegExp(r'^(?=.*[0-9]).{6,}$');

                  if (!passwordRegExp.hasMatch(value)) {
                    return 'Password must have a length greater than 6 and include at least one digit';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _confirmPwController,
                decoration: const InputDecoration(hintText: 'Confirm Password'),
// The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  if (value != _pwController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ElevatedButton(
                  onPressed: () async {
// Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      await saveUserInfo(
                        _usernameController.text,
                        _pwController.text,
                      );
// If the form is valid, display a snackbar. In the real world,
// you'd often call a server or save the information in a database.
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(
                            firstName: '',
                          ),
                        ),
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
