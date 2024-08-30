import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shopping_app/screens/mainScreens/cart_screen.dart';
import 'package:shopping_app/utils/constant.dart';
import 'package:shopping_app/widgets/container_button_model.dart';

import '../screens/mainScreens/product_screen.dart';

class ProductDetailsPopUp extends StatelessWidget {
  final iStyle = const TextStyle(
      color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w600);
  List<Color> clrs = [
    Colors.red,
    Colors.indigo,
    Colors.amber,
    Colors.green,
  ];

  ProductDetailsPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Size:",
                            style: iStyle,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Color:",
                            style: iStyle,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Total:",
                            style: iStyle,
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                      SizedBox(
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const SizedBox(width: 10),
                                Text("S", style: iStyle),
                                const SizedBox(width: 30),
                                Text("M", style: iStyle),
                                const SizedBox(width: 30),
                                Text("L", style: iStyle),
                                const SizedBox(width: 30),
                                Text("XL", style: iStyle),
                                const SizedBox(width: 30),
                              ],
                            ),
                            const SizedBox(height: 18),
                            Container(
                              child: Row(
                                children: [
                                  const Gap(10),
                                  for (var i = 0; i < 4; i++)
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      height: 28,
                                      width: 28,
                                      decoration: BoxDecoration(
                                          color: clrs[i],
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                const SizedBox(width: 10),
                                Text("-", style: iStyle),
                                const SizedBox(width: 30),
                                Text("1", style: iStyle),
                                const SizedBox(width: 30),
                                Text("+", style: iStyle),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Payment",
                        style: iStyle,
                      ),
                      const Text(
                        "\$40",
                        style: splashText,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CartScreen(),
                        ),
                      );
                    },
                    child: ContainerButtonModel(
                      iText: "Check",
                      containerWidth: MediaQuery.of(context).size.width,
                      bgColor: mainColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      child: ContainerButtonModel(
        containerWidth: MediaQuery.of(context).size.width / 1.5,
        iText: "Buy Now",
        bgColor: mainColor,
      ),
    );
  }
}
