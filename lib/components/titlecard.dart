import 'package:fire2/styles/styles.dart';
import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13),
      ),
      elevation: 5,
      shadowColor: Colors.blue,
      color: Colors.white,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(children: [
                    Text(
                      'Welcome to Healthify....',
                      style: Styles.title4,
                    ),
                    Icon(
                      Icons.health_and_safety,
                      size: 30,
                    ),
                  ]),
                  SizedBox(height: 10),
                  Row(children: [
                    Text(
                      'Your health is our responsibility.',
                      style: Styles.text1,
                    ),
                  ]),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Center(
                  child: Image(image: AssetImage('assets/images/health.png')),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
