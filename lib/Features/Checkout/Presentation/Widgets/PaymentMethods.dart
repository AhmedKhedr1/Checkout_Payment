import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/payment_item.dart';
import 'package:flutter/material.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  final List<String> PaymentMethodsitem = const [
    'assets/images/card.svg',
    'assets/images/paypal.svg'
  ];
  int activeindex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: PaymentMethodsitem.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                activeindex = index;
                setState(() {});
              },
              child: PaymentItem(
                image: PaymentMethodsitem[index],
                isSelected: activeindex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
