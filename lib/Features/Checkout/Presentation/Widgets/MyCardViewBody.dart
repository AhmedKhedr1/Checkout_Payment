import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/OrderInfoItem.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/TotalPrice.dart';
import 'package:flutter/material.dart';

class MyCardViewBody extends StatelessWidget {
  const MyCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Image.asset(
            'assets/images/basket_image.png',
            height: 460,
          ),
          SizedBox(
            height: 50,
          ),
          OrderInfoItem(
            title: 'Order Subtotal',
            value: r'$42.97',
          ),
          SizedBox(
            height: 7,
          ),
          OrderInfoItem(
            title: 'Discount',
            value: r'$0',
          ),
          SizedBox(
            height: 7,
          ),
          OrderInfoItem(
            title: 'Shipping',
            value: r'$8',
          ),
          Divider(
            height: 40,
            endIndent: 15,
            indent: 15,
            thickness: 2,
            color: Color(0xffC7C7C7),
          ),
          TotalPrice(title: 'Total', value: r'$50.97'),
        ],
      ),
    );
  }
}
