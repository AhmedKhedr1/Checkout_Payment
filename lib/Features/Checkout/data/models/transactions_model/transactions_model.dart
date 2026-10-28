import 'transaction.dart';

class TransactionsModel {
  List<Transaction>? transactions;

  TransactionsModel({this.transactions});

  factory TransactionsModel.fromJson(Map<String, dynamic> json) {
    return TransactionsModel(
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'transactions': transactions?.map((e) => e.toJson()).toList(),
      };
}
