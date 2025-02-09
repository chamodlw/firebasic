// homepage.dart
import 'package:auto_route/auto_route.dart';
import 'package:fire2/components/bottom_scroll.dart';
import 'package:fire2/components/section_scroller.dart';
import 'package:flutter/material.dart';
import '../components/show_alert.dart';
import 'package:fire2/components/titlecard.dart';

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
              child: TitleCard(),
            ),
          ),
          Expanded(
            flex: 9,
            child: Center(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: SectionScroller(),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Center(
                      child: BottomScroll(),
                    )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
