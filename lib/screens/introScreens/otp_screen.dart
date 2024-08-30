import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../utils/constant.dart';
import 'otp_verification_screen.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "OTP Verification",
                  style: forgotText,
                ),
              ),
              const Gap(50),
              const Text("Please enter your number", style: fontsize15),
              const Gap(20),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Input Number",
                  border: OutlineInputBorder(),
                ),
              ),
              const Gap(50),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OTPVerificationScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(55),
                  backgroundColor: mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "Send Code",
                  style: buttonText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
