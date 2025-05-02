import 'package:checkout_payment/Core/utils/Styless.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key, required this.title, this.width});
  final String title;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/arrow.svg'),
          SizedBox(
            width: width == null ? 97 : width,
          ),
          Text(
            title,
            style: Styless.style25,
          )
        ],
      ),
    );
  }
}
