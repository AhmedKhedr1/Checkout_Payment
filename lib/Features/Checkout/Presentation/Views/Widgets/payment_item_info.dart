import 'package:checkout_payment/Core/utils/Styless.dart';
import 'package:flutter/material.dart';

class paymentiteminfo extends StatelessWidget {
  const paymentiteminfo({super.key, required this.title, required this.value});
final String title,value;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: Styless.style18,),
         Text(value,style: Styless.styleBold18,)
      ],
    );
  }
}
