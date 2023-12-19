import 'dart:convert';
import 'homepage.dart';
import 'sign_up.dart'; // Import your SignupPage
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>(); // Add a GlobalKey for the form

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> _login() async {
    final response = await http.post(
      Uri.parse('http://localhost/cv_lu/log_in.php'),
      body: {
        'username': usernameController.text,
        'password': passwordController.text,
      },
    );

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      if (result['message'] == 'Login successful') {
        // Navigate to the next screen (Firstpage)
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FirstPage()),
        );
      } else {
        // Handle login failure
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Incorrect username or password'),
          ),
        );
      }
    } else {
      // Handle errors
      print('Error: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          'Login Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          // Wrap the Form widget around your Column
          key: _formKey, // Set the key for the form
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('image/images.png'),
                height: 100,
                width: 100,
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.redAccent,
                  fontFamily: 'RobotoMono',
                ),
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.red),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
                obscureText: false, // Set to false to show the entered text
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: 'RobotoMono',
                ),
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.red),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Form is valid, perform login
                    _login();
                  }
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'RobotoMono',
                  ),
                ),
              ),
              SizedBox(height: 10), // Add some spacing between buttons
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
                onPressed: () {
                  // Navigate to the signup page (SignupPage)
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontFamily: 'RobotoMono',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
