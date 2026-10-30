// ignore_for_file: avoid_print

import 'package:checkout_payment/Core/utils/api_keys.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Views/Thankyou_View.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Views/Widgets/CustomButton.dart';
import 'package:checkout_payment/Features/Checkout/Presentation/Views/manager/cubit/payment_cubit.dart';
import 'package:checkout_payment/Features/Checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment/Features/Checkout/data/models/transactions_model/amount.dart';
import 'package:checkout_payment/Features/Checkout/data/models/transactions_model/details.dart';
import 'package:checkout_payment/Features/Checkout/data/models/transactions_model/item.dart';
import 'package:checkout_payment/Features/Checkout/data/models/transactions_model/item_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
    required this.isPaypal,
  });
  final bool isPaypal;

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
            if (isPaypal) {
              excutePaypalPayment(context);
            } else {
              excuteStripePayment(context);
            }
          },
        );
      },
    );
  }

  void excuteStripePayment(BuildContext context) {
    PaymentIntentInputModel paymentIntentInputModel = PaymentIntentInputModel(
      amount: '100',
      currency: 'USD',
      customerId: 'cus_VWWEwbEwx6t6H3',
    );
    BlocProvider.of<PaymentCubit>(context)
        .makePayment(paymentIntentInputModel: paymentIntentInputModel);
  }
}

void excutePaypalPayment(BuildContext context) {
  var amount = Amount(
      currency: 'USD',
      details: Details(shipping: '0', shippingDiscount: '0', subtotal: '100'),
      total: '100');
  List<Item> orders = [
    Item(currency: 'USD', name: 'Apple', price: '4', quantity: 10),
    Item(currency: 'USD', name: 'test', price: '5', quantity: 12),
  ];
  var orderlist = ItemList(items: orders);
  Navigator.of(context).push(MaterialPageRoute(
    builder: (BuildContext context) => PaypalCheckoutView(
      sandboxMode: true,
      clientId: ApiKeys.paypalClintID,
      secretKey: ApiKeys.paypalSecretKey,
      transactions: [
        {
          "amount": amount.toJson(),
          "description": "The payment transaction description.",
          "item_list": orderlist.toJson()
        }
      ],
      note: "Contact us for any questions on your order.",
      onSuccess: (Map params) async {
        print("onSuccess: $params");
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return ThankyouView();
          },
        ));
      },
      onError: (error) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(error.errorMessage),
        ));
        print("onError: $error");
        Navigator.pop(context);
      },
      onCancel: () {
        print('cancelled:');
      },
    ),
  ));
}
