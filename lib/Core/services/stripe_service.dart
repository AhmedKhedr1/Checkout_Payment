import 'package:checkout_payment/Core/services/api_services.dart';
import 'package:checkout_payment/Core/utils/api_keys.dart';
import 'package:checkout_payment/Features/Checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment/Features/Checkout/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  ApiServices apiServices = ApiServices();

  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiServices.post(
        body: paymentIntentInputModel.toJson(),
        url: 'https://api.stripe.com/v1/payment_intents',
        token: ApiKeys.secretKey);
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future initPaymentSheet({required String paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret: paymentIntentClientSecret,
      merchantDisplayName: 'ahmed',
    ));
  }

  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      var paymentIntentModel =
          await createPaymentIntent(paymentIntentInputModel);
      await initPaymentSheet(
          paymentIntentClientSecret: paymentIntentModel.clientSecret!);
      await displayPaymentSheet();
    } catch (e) {
      print('Error making payment: $e');
    }
  }
}
