import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopping_app/widgets/product_details_popup.dart';

import '../../utils/constant.dart';

class ProductScreen extends StatelessWidget {
  List<String> images = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg",
  ];

  List<String> productTitles = [
    "Warm Zipper",
    "Knitted Woo",
    "Zipper Win",
    "Child Win"
  ];

  ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Product Review"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  child: FanCarouselImageSlider.sliderType2(
                    sliderHeight: 430,
                    autoPlay: false,
                    imagesLink: images,
                    isAssets: true,
                    // showIndicator: true,
                    // showArrowNav: true,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Warm Zipper", style: zipperStyle),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Hooded Jacket",
                          style: hoodedStyle,
                        )
                      ],
                    ),
                    Text(
                      "\$300.00",
                      style: priceStyle2,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 25,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Cool windy,weather is on its way. Send him out  the door in a jacket he wants to wear.Warm Zooper Hooded jacket",
                    style: hoodedStyle,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: mainColor2,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.shopping_cart,
                          color: mainColor,
                        ),
                      ),
                    ),
                     ProductDetailsPopUp(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
