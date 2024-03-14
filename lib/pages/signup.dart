import 'package:flutter/material.dart';
import 'package:mealplannerapp/pages/login.dart';

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
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _fnameController = TextEditingController();
  final TextEditingController _lnameController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
// Build a Form widget using the _formKey created above.
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign Up',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body:Container(
        decoration: const BoxDecoration( 
          image:DecorationImage(
          image: AssetImage('assets/images/login_page.jpg'),
          fit: BoxFit.fill,
          ),
      ),
      
      child: Center(
        child:Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            key: _formKey, // Assign _formKey to the Form widget
            child: ListView(
              shrinkWrap: true,
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
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
                    RegExp emailRegExp =
                        RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

                    if (!emailRegExp.hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }

                    return null;
                  },
                ),
                const SizedBox(height: 10.0),
                TextFormField(
                  controller: _fnameController,
                  decoration: InputDecoration(
                    hintText: 'First Name',
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
                    return null;
                  },
                ),
                const SizedBox(height: 10.0),
                TextFormField(
                  controller: _lnameController,
                  decoration: InputDecoration(
                    hintText: 'Last Name',
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
                    return null;
                  },
                ),
                const SizedBox(height: 10.0),
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
                const SizedBox(height: 10.0),
                TextFormField(
                  controller: _confirmPwController,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
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
                    if (value != _pwController.text) {
                      return 'Passwords do not match';
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
                        String enteredFirstName = _fnameController.text;
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                LoginPage(firstName: enteredFirstName),
                          ),
                        );
                      }
                    },
                    child: const Text('Submit'),
                  ),
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
