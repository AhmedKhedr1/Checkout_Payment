import 'package:checkout_payment/Core/utils/Styless.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/Cardinfowidget.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/TotalPrice.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/payment_item_info.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 700,
      decoration: ShapeDecoration(
        color: Color(0xffEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(
          children: [
            Text(
              'Thank you!',
              style: Styless.style25,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Your transaction was successful',
              style: Styless.style20,
            ),
            SizedBox(
              height: 42,
            ),
            paymentiteminfo(title: 'Date', value: '01/24/2023'),
            SizedBox(
              height: 20,
            ),
            paymentiteminfo(title: 'Time', value: '10:15 AM'),
            SizedBox(
              height: 20,
            ),
            paymentiteminfo(title: 'To', value: 'Sam Louis'),
            Divider(
              height: 60,
              thickness: 2,
            ),
            TotalPrice(title: 'Total', value: r'$50.97'),
            SizedBox(
              height: 30,
            ),
            Cardinfowidget(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  FontAwesomeIcons.barcode,
                  size: 64,
                ),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1.5,
                          color: Color(0xff34A853),
                        ),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      style: Styless.style24.copyWith(color: Color(0xff34A853)),
                    ),
                  ),
                )
              ],
            ),
          SizedBox(height:((MediaQuery.sizeOf(context).height * 0.2+20)/2)-29,)
          ],
        ),
      ),
    );
  }
}
