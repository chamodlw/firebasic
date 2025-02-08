import 'package:auto_route/auto_route.dart';
import 'package:fire2/routes/app_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../styles/styles.dart';

@RoutePage()
class ShowAlert extends StatelessWidget {
  const ShowAlert({super.key}); // Added constructor for consistency

  void showAlertDialog(BuildContext context) {
    // Set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Center(
        child: Text(
          "Do you want to Logout?",
          style: Styles.title3,
        ),
      ),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 40), // Add horizontal padding
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Justify buttons
          children: [
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog on cancel
              },
            ),
            TextButton(
              child: const Text("Continue"),
              onPressed: () {
                FirebaseAuth.instance.signOut();
                AutoRouter.of(context).push(const LoginRoute());
              },
            ),
          ],
        ),
      ],
    );

    // Show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Trigger the alert dialog when this screen is built
    Future.delayed(Duration.zero, () => showAlertDialog(context));

    return Scaffold(
      appBar: AppBar(title: const Text('Logout Alert')),
      body: const Center(
        child: Text('Press back to exit or check the alert dialog'),
      ),
    );
  }
}
