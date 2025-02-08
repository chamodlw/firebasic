// homepage.dart
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import '../components/show_alert.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              ShowAlert().showAlertDialog(context);
            },
          ),
        ],
      ),
      body: Center(child: Text('Logged in successfully!')),
    );
  }
}
