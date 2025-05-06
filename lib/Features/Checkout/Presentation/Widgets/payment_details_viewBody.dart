import 'package:checkout_payment/Features/Checkout/Presentation/Views/Thankyou_View.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/CustomButton.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/CustomappBar.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/CustomcCeditCard.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Widgets/PaymentMethods.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewbody extends StatefulWidget {
  const PaymentDetailsViewbody({super.key});

  @override
  State<PaymentDetailsViewbody> createState() => _PaymentDetailsViewbodyState();
}

class _PaymentDetailsViewbodyState extends State<PaymentDetailsViewbody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Customappbar(
            title: 'Payment Details',
            width: 48,
          ),
          SizedBox(
            height: 32,
          ),
          PaymentMethods(),
          SizedBox(
            height: 10,
          ),
          CustomcCeditCard(
            formKey: formKey,
            autovalidateMode: autoValidateMode,
          ),
          SizedBox(
            height: 80,
          ),
          Custombutton(
            title: 'Pay',
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ThankyouView();
                  },
                ));
                autoValidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
