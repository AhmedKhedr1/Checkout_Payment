import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/CustomappBar.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/PaymentMethods.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewbody extends StatelessWidget {
  const PaymentDetailsViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Customappbar(
          title: 'Payment Details',
          width: 48,
        ),
        SizedBox(
          height: 32,
        ),
        PaymentMethods()
      ],
    );
  }
}
