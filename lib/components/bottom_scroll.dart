import 'package:fire2/components/bottom_cards.dart';
import 'package:fire2/styles/styles.dart';
import 'package:flutter/material.dart';

class BottomScroll extends StatefulWidget {
  BottomScroll({super.key});

  @override
  _BottomScrollState createState() => _BottomScrollState();
}

class _BottomScrollState extends State<BottomScroll> {
  final List<String> items = ['All', 'Neurologist', 'Allergy', 'ENT', 'Urologist', 'Others'];
  String selectedItem = 'All'; // Default selected item

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
                            children: items.map((item) {
                              final isSelected = item == selectedItem;
                              return Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: isSelected
                                        ? Color.fromARGB(255, 93, 195, 242)
                                        : Colors.white, // Unselected button background
                                    foregroundColor: isSelected
                                        ? Colors.white // Selected text color
                                        : Colors.black, // Unselected text color
                                    side: BorderSide(
                                      color: isSelected ? Colors.blue : Colors.grey, // Border color
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      selectedItem = item; // Update selected item
                                    });
                                  },
                                  child: Text(item, style: Styles.text11),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 14,
                child: BottomCards(selectedItem: selectedItem)
              
            ),
          ],
      ),
    ),
    );
}
}
