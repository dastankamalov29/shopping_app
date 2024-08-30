import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

import '../../utils/constant.dart';
import 'recovery_screen.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  final int _otpCodeLength = 4;
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  TextEditingController textEditingController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Enter OTP",
                  style: forgotText,
                ),
              ),
              const Gap(60),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Enter the code we have send you to your numbers",
                  style: fontsize15,
                ),
              ),
              const Gap(30),
              TextFieldPin(
                textController: textEditingController,
                autoFocus: true,
                codeLength: _otpCodeLength,
                alignment: MainAxisAlignment.center,
                defaultBoxSize: 46.0,
                margin: 10,
                selectedBoxSize: 46.0,
                textStyle: const TextStyle(fontSize: 16),
                defaultDecoration: _pinPutDecoration.copyWith(
                    border: Border.all(
                        color:
                            Theme.of(context).primaryColor.withOpacity(0.6))),
                selectedDecoration: _pinPutDecoration,
                onChange: (code) {
                  setState(() {});
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RecoveryScreen(),
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
                  "Verify",
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
