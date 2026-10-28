import 'package:checkout_payment/Features/Checkout/Presentation/Views/Thankyou_View.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Views/Widgets/CustomButton.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Views/manager/cubit/payment_cubit.dart';
import 'package:checkout_payment/Features/Checkout/data/models/payment_intent_input_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => ThankyouView(),
          ));
        }
        if (state is PaymentFailure) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.errorMessage),
          ));
        }
      },
      builder: (context, state) {
        return Custombutton(
          isLoading: state is PaymentLoading ? true : false,
          title: 'Continue',
          onTap: () {
            PaymentIntentInputModel paymentIntentInputModel =
                PaymentIntentInputModel(
              amount: '100',
              currency: 'USD',
              customerId: 'cus_VWWEwbEwx6t6H3',
            );
            BlocProvider.of<PaymentCubit>(context)
                .makePayment(paymentIntentInputModel: paymentIntentInputModel);
          },
        );
      },
    );
  }
}
