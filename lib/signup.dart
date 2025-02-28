// signup.dart
import 'package:auto_route/auto_route.dart';
import 'package:fire2/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'styles/styles.dart';

@RoutePage()
class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  Future<void> handleSignup() async {
    if (_passwordController.text.trim() != _confirmPasswordController.text.trim()) {
      print('Passwords do not match');
      return;
    }

    try {
      await _auth.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
       AutoRouter.of(context).push(const HomeRoute());
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final viewInsets = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 93, 195, 242),
              Color.fromARGB(255, 202, 235, 250),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (viewInsets == 0)
                Image.asset(
                  'assets/images/health.png',
                  height: 150,
                ),
              SizedBox(height: 20),
              const Text(
                'Healthify',
                style: Styles.title1,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 5),
              const Text(
                'Your health is our responsibility.',
                style: Styles.title2,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(Icons.close, size: 20.0, color: Colors.grey),
                    onPressed: () {
                      _emailController.clear();
                    },
                  ),
                  labelText: 'Email'),
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(Icons.close, size: 20.0, color: Colors.grey),
                    onPressed: () {
                      _emailController.clear();
                    },
                  ),
                  labelText: 'Password'),
                obscureText: true,
              ),
              TextField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(Icons.close, size: 20.0, color: Colors.grey),
                    onPressed: () {
                      _emailController.clear();
                    },
                  ),
                  labelText: 'Confirm Password'),
                obscureText: true,
              ),
              SizedBox(height: 10),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account? ', style: Styles.text2),

                TextButton(
                  onPressed: () {
                  AutoRouter.of(context).push(const LoginRoute());
                },
                child: Text('Login', style: Styles.text1),
                ),
                  ]
                ),
              ElevatedButton(
                onPressed: handleSignup,
                child: Text('Register', style: Styles.text1),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}