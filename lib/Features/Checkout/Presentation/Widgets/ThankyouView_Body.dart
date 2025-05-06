import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/Custom_shaped_container.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/CustomappBar.dart';
import 'package:flutter/material.dart';

class ThankyouviewBody extends StatelessWidget {
  const ThankyouviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Customappbar(title: ''),
        SizedBox(height: 20,),
        CustomShapedContainer(),
      ],
    );
  }
}
