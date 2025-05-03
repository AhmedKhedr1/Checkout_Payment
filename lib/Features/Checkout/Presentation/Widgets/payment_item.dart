// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentItem extends StatelessWidget {
  PaymentItem({super.key, required this.isSelected, required this.image});
  final String image;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 103,
        height: 62,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
                color: isSelected
                    ? const Color(0xff34A853)
                    : Colors.black.withOpacity(0.5),
                width: 2)),
        child: SvgPicture.asset(
          image,
          fit: BoxFit.scaleDown,
        ));
  }
}
