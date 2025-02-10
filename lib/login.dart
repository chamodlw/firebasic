// login.dart
import 'package:auto_route/auto_route.dart';
import 'package:fire2/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../styles/styles.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> handleLogin() async {

    try {
      await _auth.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      print('Logged in successfully');
      AutoRouter.of(context).push(const HomeRoute());
    } catch (e) {
      print('Error: $e');
    print({_emailController.text.trim(), _passwordController.text.trim()});
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login Failed: ${e.toString()}')),
      );
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
                  labelText: 'Email',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.close, size: 20.0, color: Colors.grey),
                    onPressed: () {
                      _emailController.clear();
                    },
                  ),
                  ),
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.close,size: 20.0, color: Colors.grey),
                    onPressed: () {
                      _passwordController.clear();
                    },
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 10),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account? ', style: Styles.text2),

                TextButton(
                  onPressed: () {
                  AutoRouter.of(context).push(const SignupRoute());
                },
                child: Text('SignUp', style: Styles.text1),
                ),
                  ]
                ),
              ElevatedButton(
                onPressed: handleLogin,
                child: Text('Login', style: Styles.text1),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
