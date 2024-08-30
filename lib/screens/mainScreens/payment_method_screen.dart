import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constant.dart';

import '../../widgets/container_button_model.dart';
import 'order_confirm_screen.dart';
import 'shipping_adress.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int _type = 1;
  void _handleRadio(Object? e) => setState(() {
        _type = e as int;
      });

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment Method"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: const BackButton(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Container(
                    width: size.width,
                    height: 55,
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      border: _type == 1
                          ? Border.all(width: 1, color: mainColor)
                          : Border.all(width: 0.3, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: mainColor,
                                ),
                                const Text("Pay Pal"),
                              ],
                            ),
                            Image.asset(
                              "assets/images/icon00.png",
                              width: 90,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: size.width,
                    height: 55,
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      border: _type == 0
                          ? Border.all(width: 1, color: mainColor)
                          : Border.all(width: 0.3, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  value: 0,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: mainColor,
                                ),
                                const Text("Credit Card"),
                              ],
                            ),
                            Image.asset("assets/images/123.jpeg")
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: size.width,
                    height: 55,
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      border: _type == 0
                          ? Border.all(width: 1, color: mainColor)
                          : Border.all(width: 0.3, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  value: 0,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: mainColor,
                                ),
                                const Text("Amazon Pay"),
                              ],
                            ),
                            Image.asset("assets/images/amazon.png")
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: size.width,
                    height: 55,
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      border: _type == 0
                          ? Border.all(width: 1, color: mainColor)
                          : Border.all(width: 0.3, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  value: 0,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: mainColor,
                                ),
                                const Text("Google Pay"),
                              ],
                            ),
                            Image.asset(
                              "assets/images/icon2.png",
                              width: 70,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sub Total",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text("300.50"),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shiping Fee",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text("15.00"),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Payment",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("380.50",style: priceStyle,)
                    ],
                  ),
                  const SizedBox(height: 30),
      
                  InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ShippingAdress(),
                      ),
                    );
                  },
                  child: ContainerButtonModel(
                    iText: "Confirm Payment",
                    containerWidth: MediaQuery.of(context).size.width,
                    bgColor: mainColor,
                  ),
                ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
