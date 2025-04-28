import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/CustomappBar.dart';
import 'package:flutter/material.dart';

class Paymentdetails extends StatelessWidget {
  const Paymentdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Customappbar(
            title: 'Payment Details',
            width: 48,
          ),
        ],
      ),
    );
  }
}
