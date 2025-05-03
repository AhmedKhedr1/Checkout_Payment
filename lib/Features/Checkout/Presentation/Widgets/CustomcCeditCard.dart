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
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
          isHolderNameVisible: true,
          onCreditCardWidgetChange: (p0) {},
        ),
        CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (CreditCardModel) {
              cardHolderName = CreditCardModel.cardHolderName;
              cardNumber = CreditCardModel.cardNumber;
              cvvCode = CreditCardModel.cvvCode;
              expiryDate = CreditCardModel.expiryDate;
              showBackView = CreditCardModel.isCvvFocused;
              setState(() {});
            },
            formKey: formKey)
      ],
    );
  }
}
