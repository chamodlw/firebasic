import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      
    );
           
  }
}