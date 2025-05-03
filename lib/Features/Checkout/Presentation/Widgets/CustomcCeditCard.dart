import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomcCeditCard extends StatefulWidget {
  const CustomcCeditCard({super.key});

  @override
  State<CustomcCeditCard> createState() => _CustomcCeditCardState();
}

class _CustomcCeditCardState extends State<CustomcCeditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBackView = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (p0) {},
        )
      ],
    );
  }
}
