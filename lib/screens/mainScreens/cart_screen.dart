// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:shopping_app/screens/mainScreens/order_success_screen.dart';
import 'package:shopping_app/utils/constant.dart';
import 'package:shopping_app/widgets/container_button_model.dart';

import 'payment_method_screen.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  List imageList = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg",
  ];

  List productTitles = [
    "Warm Zeeper",
    "Knitted Woo",
    "Zipper Win",
    "Child Win",
  ];

  List prices = [
    "\$300",
    "\$600",
    "\$350",
    "\$60",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        leading: const BackButton(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                child: ListView.builder(
                  itemCount: imageList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                            activeColor: mainColor,
                            splashRadius: 20,
                            value: true,
                            onChanged: (val) {},
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imageList[index],
                              height: 90,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productTitles[index],
                                style: cartTitleStyle,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Hooded Jacket",
                                style: cartTitleStyle2,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                prices[index],
                                style: priceStyle3,
                              )
                            ],
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            "-",
                            style: TextStyle(color: Colors.green, fontSize: 20),
                          ),
                          // const SizedBox(width),
                          const Text(
                            "1",
                            style: TextStyle(fontSize: 20),
                          ),
                          const Text(
                            "+",
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Select All"),
                  Checkbox(
                    value: true,
                    activeColor: mainColor,
                    splashRadius: 20,
                    onChanged: (val) {},
                  ),
                ],
              ),
              const Divider(color: Colors.black, thickness: 1),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total Payment"),
                  Text(
                    "\$300.50",
                    style: TextStyle(
                      color: Color(0XFFDB3022),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentMethodScreen(),
                    ),
                  );
                },
                child: ContainerButtonModel(
                  iText: "CheckOut",
                  containerWidth: MediaQuery.of(context).size.width,
                  bgColor: mainColor,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
