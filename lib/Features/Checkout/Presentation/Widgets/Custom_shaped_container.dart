import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/Custom_check_icon.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/Custom_dashed_line.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/ThankYouCard.dart';
import 'package:flutter/material.dart';

class CustomShapedContainer extends StatelessWidget {
  const CustomShapedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ThankYouCard(),
          Positioned(
              left: -20,
              bottom: MediaQuery.sizeOf(context).height * 0.2,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
              right: -20,
              bottom: MediaQuery.sizeOf(context).height * 0.2,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
            top: -50,
            left: 0,
            right: 0,
            child: Custom_check_icon(),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * 0.2 + 20,
            left: 24,
            right: 24,
            child: Custom_dashed_line(),
          )
        ],
      ),
    );
  }
}
