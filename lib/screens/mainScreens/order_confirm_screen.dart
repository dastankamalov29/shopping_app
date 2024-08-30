import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shopping_app/screens/mainScreens/home_screen.dart';
import 'package:shopping_app/screens/mainScreens/order_success_screen.dart';
import 'package:shopping_app/screens/navigator/navigation_screen.dart';
import 'package:shopping_app/utils/constant.dart';
import 'package:shopping_app/widgets/container_button_model.dart';

class OrderConfirmScreen extends StatelessWidget {
  const OrderConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Confirm Order"),
        leading: const BackButton(),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Text("Shipping Address", style: newestProduct),
                const SizedBox(height: 20),
                Container(
                  width: size.width,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Dear Programmer"),
                            Text(
                              "Change",
                              style: priceStyle,
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Text("3 NewBridge Court"),
                        Text("Chino Hills,CA 97545, United States"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Payment Method", style: newestProduct),
                    Text("Change", style: priceStyle),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/mastercard.jpeg",
                        fit: BoxFit.contain,
                      ),
                    ),
                    const Gap(15),
                    const Text("**** **** **** 3947"),
                  ],
                ),
                const SizedBox(height: 40),
                const Text("Delivery Method", style: newestProduct),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/icon3.png",
                              width: 70,
                            ),
                            const Text("2-7 Days")
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Container(
                        margin:
                            const EdgeInsets.only(top: 10, left: 2, right: 2),
                        child: Column(
                          children: [
                            Text(
                              "Home Delivery",
                              style: TextStyle(
                                  color: Colors.blueAccent.shade700,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text("2-7 Days")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sub Total",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "\$300.50",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping Fee",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "\$15",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Divider(thickness: 1, color: Colors.black),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping Fee",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "\$15",
                      style: priceStyle,
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrderSuccesScreen(),
                      ),
                    );
                  },
                  child: ContainerButtonModel(
                    iText: "Confirm Order",
                    containerWidth: size.width,
                    bgColor: mainColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
