// ignore_for_file: non_constant_identifier_names

import 'package:checkout_payment/Core/services/api_services.dart';
import 'package:checkout_payment/Core/utils/api_keys.dart';
import 'package:checkout_payment/Features/Checkout/data/models/ephemeral_key_model/ephemeral_key_model.dart';
import 'package:checkout_payment/Features/Checkout/data/models/init_payment_sheet_input_model.dart';
import 'package:checkout_payment/Features/Checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment/Features/Checkout/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  ApiServices apiServices = ApiServices();

  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiServices.post(
        body: paymentIntentInputModel.toJson(),
        contenttype: Headers.formUrlEncodedContentType,
        url: 'https://api.stripe.com/v1/payment_intents',
        token: ApiKeys.secretKey);
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future initPaymentSheet(
      {required InitPaymentSheetInputModel initPaymentSheetInputModel}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret: initPaymentSheetInputModel.clientSecret,
      customerEphemeralKeySecret: initPaymentSheetInputModel.ephemeralKeySecret,
      customerId: initPaymentSheetInputModel.customerId,
      merchantDisplayName: 'ahmed',
    ));
  }

  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    var EphemeralKeyModel = await createEphemeralKey(
        customerId: paymentIntentInputModel.customerId);
    var PaymentSheetInputModel = InitPaymentSheetInputModel(
        clientSecret: paymentIntentModel.clientSecret!,
        ephemeralKeySecret: EphemeralKeyModel.secret!,
        customerId: paymentIntentModel.customer!);
    await initPaymentSheet(initPaymentSheetInputModel: PaymentSheetInputModel);
    await displayPaymentSheet();
  }

  Future<EphemeralKeyModel> createEphemeralKey(
      {required String customerId}) async {
    var response = await apiServices.post(
        body: {'customer': customerId},
        contenttype: Headers.formUrlEncodedContentType,
        url: 'https://api.stripe.com/v1/ephemeral_keys',
        headers: {
          'Authorization': 'Bearer ${ApiKeys.secretKey}',
          'Stripe-Version': '2024-06-20'
        });
    return EphemeralKeyModel.fromJson(response.data);
  }
}
