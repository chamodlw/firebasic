import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SectionScroller extends StatelessWidget {
  const SectionScroller({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
          items: ['New Channel', 'Channel History', 'Contact Us'].map((e) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 93, 195, 242),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("$e")),
            );
          }).toList(),
          options: CarouselOptions(
            height: 300,
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
