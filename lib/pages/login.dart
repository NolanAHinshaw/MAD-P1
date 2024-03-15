import 'package:flutter/material.dart';
import 'package:mealplannerapp/pages/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  Future<bool> validateUser(String username, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String savedUsername = prefs.getString('username') ?? '';
    String savedPassword = prefs.getString('password') ?? '';
    return savedUsername == username && savedPassword == password;
  }

  final _formKey = GlobalKey<FormState>();

  void login(BuildContext context) async {
    String username = _usernameController.text.trim();
    String password = _pwController.text.trim();

    bool isValid = await validateUser(username, password);

    if (isValid) {
      // Navigate to the home page or perform any other action
      Navigator.pushNamed(context, '/homepage');
    } else {
      // Show error message or perform any other action
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Invalid username or password'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Page',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login_page.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 10.0),
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
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    controller: _pwController,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                    ),
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
                              builder: (context) => HomePage(
                                  firstName: widget
                                      .firstName), //here we need to insert homepage for P1
                            ),
                          );
                          login(context);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        textStyle: const TextStyle(color: Colors.black),
                      ),
                      child: const Text('Login'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate back to first route when tapped.
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      textStyle: const TextStyle(color: Colors.black),
                    ),
                    child: const Text('Back to Register'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  final String firstName;
  const LoginPage({super.key, required this.firstName});
  @override
  LoginState createState() {
    return LoginState();
  }
}
