import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/screens/navigator/navigation_screen.dart';
import 'package:shopping_app/utils/constant.dart';

import '../../widgets/container_button_model.dart';

class OrderSuccesScreen extends StatelessWidget {
  const OrderSuccesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 70),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/success.png",
                  width: 400,
                ),
              ],
            ),
          ),
          const Text("Success!", style: successStyle),
          const Text(
              "Your Order will be delivered soon.\n Thank you! For choosing our app"),
              const SizedBox(height: 40),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NavigationScreen(),
                ),
              );
            },
            child: const ContainerButtonModel(
              iText: "Continue Shopping",
              containerWidth: 350,
              bgColor: mainColor,
            ),
          )
        ],
      ),
    );
  }
}
