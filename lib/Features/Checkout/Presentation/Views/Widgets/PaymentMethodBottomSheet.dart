import 'package:checkout_payment/Features/Checkout/Presentation/Views/Widgets/PaymentMethods.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Views/Widgets/custom_button_bloc_consumer.dart';
import 'package:flutter/material.dart';

class PaymentMethodBottomSheet extends StatefulWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  State<PaymentMethodBottomSheet> createState() =>
      _PaymentMethodBottomSheetState();
}

class _PaymentMethodBottomSheetState extends State<PaymentMethodBottomSheet> {
  bool isPaypal = false;
  updatePaymetMethod({required int index}) {
    if (index == 0) {
      isPaypal = false;
    } else {
      isPaypal = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentMethods(updatePaymentMethod: updatePaymetMethod,),
          SizedBox(
            height: 22,
          ),
          CustomButtonBlocConsumer(
            isPaypal: isPaypal,
          ),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
