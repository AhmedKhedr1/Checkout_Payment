import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/payment_details_viewBody.dart';
import 'package:flutter/material.dart';

class Paymentdetails extends StatelessWidget {
  const Paymentdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: PaymentDetailsViewbody()
    );
  }
}
