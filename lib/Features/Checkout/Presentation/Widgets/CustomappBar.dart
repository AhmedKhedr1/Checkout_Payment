import 'package:checkout_payment/Core/utils/Styless.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/arrow.svg'),
          SizedBox(
            width: 97,
          ),
          Text(
            'My Cart',
            style: Styless.style25,
          )
        ],
      ),
    );
  }
}
