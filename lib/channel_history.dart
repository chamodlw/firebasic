import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChannelHistory extends StatelessWidget {
  const ChannelHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Channel History',
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