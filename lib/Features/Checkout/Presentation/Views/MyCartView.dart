import 'package:checkout_payment/Features/Checkout/Presentation/Views/Widgets/CustomButton.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Views/Widgets/CustomappBar.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Views/Widgets/MyCardViewBody.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Views/Widgets/PaymentMethodBottomSheet.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Views/manager/cubit/payment_cubit.dart';
import 'package:checkout_payment/Features/Checkout/data/repos/checkout_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Mycartview extends StatelessWidget {
  const Mycartview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          Customappbar(
            title: 'My Cart',
          ),
          SizedBox(height: 25),
          MyCardViewBody(),
          SizedBox(
            height: 30,
          ),
          Custombutton(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(
              //   builder: (context) {
              //     return Paymentdetails();
              //   },
              // ));
              showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                builder: (context) {
                  return BlocProvider(
                    create: (context) =>
                        PaymentCubit(checkoutRepo: CheckoutRepoImpl()),
                    child: PaymentMethodBottomSheet(),
                  );
                },
              );
            },
            title: 'Complete Payment',
          ),
          SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}
