import 'package:checkout_payment/Features/Checkout/Presentation/Views/PaymentDetails.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/CustomButton.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/CustomappBar.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/MyCardViewBody.dart';
import 'package:flutter/material.dart';

class Mycartview extends StatelessWidget {
  const Mycartview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          Customappbar(title: 'My Cart',),
          SizedBox(height: 25),
          MyCardViewBody(),
          SizedBox(
            height: 16,
          ),
          Custombutton(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Paymentdetails();
              },));
            },
            title: 'Complete Payment',
          )
        ],
      ),
    );
  }
}
