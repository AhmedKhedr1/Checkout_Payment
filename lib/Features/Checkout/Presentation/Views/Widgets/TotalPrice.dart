import 'package:checkout_payment/Core/utils/Styless.dart';
import 'package:flutter/material.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.title, required this.value});

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styless.style24,
        ),
        Spacer(),
        Text(
          value,
          style: Styless.style24,
        ),
      ],
    );
  }
}
