import 'package:checkout_payment/Core/utils/api_keys.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Views/MycartView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  Stripe.publishableKey=ApiKeys.publishableKey;
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mycartview(),
    );
  }
}
