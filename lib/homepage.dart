// homepage.dart
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../components/show_alert.dart';
import '../styles/styles.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //add color
        backgroundColor: Color.fromARGB(255, 202, 235, 250),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              ShowAlert().showAlertDialog(context);
            },
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 202, 235, 250),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Card(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Center(
              child: Text('Bottom Part'),
            ),
          ),
        ],
      ),
    );
  }
}
