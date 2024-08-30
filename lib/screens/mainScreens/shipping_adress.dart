import 'package:flutter/material.dart';
import 'package:shopping_app/screens/mainScreens/order_confirm_screen.dart';
import 'package:shopping_app/utils/constant.dart';
import 'package:shopping_app/widgets/container_button_model.dart';

class ShippingAdress extends StatelessWidget {
  const ShippingAdress({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Shipping Adress"),
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  addressForm("Full Name"),
                  const SizedBox(height: 25),
                  addressForm("Phone Number"),
                  const SizedBox(height: 25),
                  addressForm("Adress"),
                  const SizedBox(height: 25),
                  addressForm("City"),
                  const SizedBox(height: 25),
                  addressForm("State/Province/Region"),
                  const SizedBox(height: 25),
                  addressForm("Zip Code(Postal Code)"),
                  const SizedBox(height: 25),
                  addressForm("Country"),
                  const SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  const OrderConfirmScreen(),
                        ),
                      );
                    },
                    child: ContainerButtonModel(
                      iText: "Save Adress",
                      containerWidth: size.width,
                      bgColor: mainColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  TextFormField addressForm(String labelText) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
      ),
    );
  }
}
