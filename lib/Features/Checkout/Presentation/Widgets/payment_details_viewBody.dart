import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/CustomButton.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/CustomappBar.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/CustomcCeditCard.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/PaymentMethods.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewbody extends StatelessWidget {
  const PaymentDetailsViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Customappbar(
            title: 'Payment Details',
            width: 48,
          ),
          SizedBox(
            height: 32,
          ),
          PaymentMethods(),
          SizedBox(height: 10,),
          CustomcCeditCard(),
          SizedBox(
            height: 100,
          ),
          Custombutton(
            title: 'Pay',
            onTap: () {},
          )
        ],
      ),
    );
  }
}
