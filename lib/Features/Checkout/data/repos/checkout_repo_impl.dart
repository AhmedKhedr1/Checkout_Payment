import 'package:checkout_payment/Core/errors/failure.dart';
import 'package:checkout_payment/Core/services/stripe_service.dart';
import 'package:checkout_payment/Features/Checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment/Features/Checkout/data/repos/checkout_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class CheckoutRepoImpl implements CheckoutRepo {
  final StripeService stripeService = StripeService();

  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } on StripeException catch (e) {
      return left(ServerFailure(
          errMessage: e.error.localizedMessage ?? 'Payment cancelled'));
    } on DioException catch (e) {
      print('Status: ${e.response?.statusCode}');
      print('Body: ${e.response?.data}');
      return left(ServerFailure(
          errMessage: e.response?.data?['error']?['message'] ??
              e.toString()));
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}