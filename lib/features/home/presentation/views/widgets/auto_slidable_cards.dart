import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_task/core/utils/assets.dart';
import 'package:flutter/material.dart';

class AutoSlidableCards extends StatefulWidget {
  const AutoSlidableCards({super.key});

  @override
  State<AutoSlidableCards> createState() => _AutoSlidableCardsState();
}

class _AutoSlidableCardsState extends State<AutoSlidableCards> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  final myImages = [
    Image.asset(
      Assets.imagesE1,
    ),
    Image.asset(
      Assets.imagesE3,
    ),
    Image.asset(
      Assets.imagesG3,
    ),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              items: myImages,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                // height: 200,
                autoPlayAnimationDuration: const Duration(milliseconds: 1500),
                autoPlayInterval: const Duration(seconds: 4),
                enableInfiniteScroll: true,
                aspectRatio: 310 / 164,
                onPageChanged: (index, reason) {
                  setState(() {});
                  currentIndex = index;
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                myImages.length,
                (index) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    height: 10,
                    width: currentIndex == index ? 20 : 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: index == currentIndex
                          ? const Color(0xffF39200)
                          : Colors.grey.shade300,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
