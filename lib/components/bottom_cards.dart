import 'package:fire2/styles/styles.dart';
import 'package:flutter/material.dart';

class BottomCards extends StatefulWidget {
  final String selectedItem;

  final List<Map<String, dynamic>> items = [
    {
      'Name': 'Dr. Kasun Perera',
      'Specialized': 'Neurologist',
      'Degree': 'MBBS - UOC',
      'image': 'assets/images/doc1.png',
    },
    {
      'Name': 'Dr. Supun Silva',
      'Specialized': 'Allergy',
      'Degree': 'MBBS - UOP',
      'image': 'assets/images/doc2.png',
    },
    {
      'Name': 'Dr. Rijitha Alwis',
      'Specialized': 'ENT',
      'Degree': 'MBBS - UOR',
      'image': 'assets/images/doc3.png',
    },
    {
      'Name': 'Dr. Nimal Weerakoon',
      'Specialized': 'Urologist',
      'Degree': 'MBBS - UOC',
      'image': 'assets/images/doc4.png',
    },
    {
      'Name': 'Dr. Sunil Perera',
      'Specialized': 'Others',
      'Degree': 'MBBS - UOC',
      'image': 'assets/images/doc5.png',
    },
    {
      'Name': 'Dr. Risula Silva',
      'Specialized': 'Neurologist',
      'Degree': 'MBBS - UOP',
      'image': 'assets/images/doc1.png',
    },
    {
      'Name': 'Dr. Baratha Perera',
      'Specialized': 'Urologist',
      'Degree': 'MBBS - UOR',
      'image': 'assets/images/doc2.png',
    },
    {
      'Name': 'Dr. Tharindu Silva',
      'Specialized': 'Neurologist',
      'Degree': 'MBBS - UOS',
      'image': 'assets/images/doc3.png',
    },
    {
      'Name': 'Dr. Gihan Perera',
      'Specialized': 'Neurologist',
      'Degree': 'MBBS - UOC',
      'image': 'assets/images/doc4.png',
    },
    {
      'Name': 'Dr. Anil Silva',
      'Specialized': 'Allergy',
      'Degree': 'MBBS - UOP',
      'image': 'assets/images/doc5.png',
    }
  ];

  BottomCards({super.key, required this.selectedItem});

  @override
  State<BottomCards> createState() => _BottomCardsState();
}

class _BottomCardsState extends State<BottomCards> {
  @override
  Widget build(BuildContext context) {
    final filteredItems = widget.selectedItem == "All"
        ? widget.items
        : widget.items.where((item) => item['Specialized'] == widget.selectedItem).toList();

    return Container(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 3,
        ),
        itemCount: filteredItems.length,
        itemBuilder: (context, index) {
          final item = filteredItems[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            child: Card(
              elevation: 5,
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
              child: Container(
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white,
                      Color.fromARGB(255, 202, 235, 250),
                      
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      item['image'],
                      height: 80,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      item['Name'],
                      style: Styles.text1,
                    ),
                    Text(
                      widget.selectedItem == "All" ? item['Specialized'] :
                      item['Degree'],
                      style: Styles.text2,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
