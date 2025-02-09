import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SectionScroller extends StatelessWidget {
  const SectionScroller({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        'title': 'New Channel',
        'icon': Icons.add_outlined,
        
      },
      {
        'title': 'Channel History',
        'icon': Icons.view_list_outlined,
      },
      {
        'title': 'Contact Us',
        'icon': Icons.contact_support_outlined,
      },
    ];
    return Container(
      child: CarouselSlider(
          items: items.map((item) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                decoration: BoxDecoration(
                color: Color.fromARGB(255, 93, 195, 242),
                borderRadius: BorderRadius.circular(13),
                boxShadow: [
                  BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                  ),
                ],
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 7,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                item['title'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]),
                      ),
                      Expanded(
                        flex: 3,
                        child: Icon(
                          item['icon'],
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: 150,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          )),
    );
  }
}
