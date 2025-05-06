import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/ThankyouView_Body.dart';
import 'package:flutter/material.dart';

class ThankyouView extends StatelessWidget {
  const ThankyouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: ThankyouviewBody(),
    );
  }
}
