import 'package:fire2/styles/styles.dart';
import 'package:flutter/material.dart';

class BottomScroll extends StatelessWidget {
  BottomScroll({super.key});

  final List<String> items = <String>['All', 'Neurologist', 'Allergy', 'ENT', 'Urologist', 'Others'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 202, 235, 250),
      body: Center(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Expanded(
                       child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                         height: 40,
                         child: ListView(
                         scrollDirection: Axis.horizontal,
                         children: [
                            for (var item in items)
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(item, style: Styles.text11),
                                ),
                              ),
                         ],
                         ),
                       ),
                       ),
                     
                   ]),
                  ],
                )),
            Expanded(
              flex: 12,
              child: Text(
                'Your health is our responsibility.',
                style: Styles.text1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
