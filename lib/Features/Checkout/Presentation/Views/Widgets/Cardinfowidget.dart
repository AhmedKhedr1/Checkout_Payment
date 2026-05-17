import 'package:checkout_payment/Core/utils/Styless.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Cardinfowidget extends StatelessWidget {
  const Cardinfowidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      height: 73,
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 22),
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/master_card.svg'),
          SizedBox(
            width: 23,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Credit Card',
                textAlign: TextAlign.left,
                style: Styless.style18,
              ),
              Text(
                'Mastercard **78',
                style: Styless.style18
                    .copyWith(color: Colors.black.withOpacity(0.67)),
              )
            ],
          )
        ],
      ),
    );
  }
}
