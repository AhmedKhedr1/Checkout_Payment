import 'package:checkout_payment/Features/Checkout/Presentation/Views/Widgets/PaymentMethods.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Views/Widgets/custom_button_bloc_consumer.dart';
import 'package:flutter/material.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentMethods(),
          SizedBox(
            height: 22,
          ),
          CustomButtonBlocConsumer(),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
