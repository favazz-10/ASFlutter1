import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class carouselslider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Slider'),
        centerTitle: true,
      ),
      body: Center(
        child: CarouselSlider(
          items: [
            Container(
              height: 100,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'))),
            ),
            Container(
              height: 100,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/eye.jpg'))),
            ),
            Container(
              height: 100,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/france.jpeg'))),
            ),
            Container(
              height: 100,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/france.jpeg'))),
            ),
            Container(
              height: 100,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'))),
            ),
          ],
          options: CarouselOptions(
            height: 150,
            viewportFraction: 0.5,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.easeInOutCubic,
            enlargeCenterPage: true,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: carouselslider(),
  ));
}
