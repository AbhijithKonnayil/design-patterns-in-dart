import 'dart:io';

import 'package:design_patterns_in_dart/structural_design_patterns/adapter/example/adapter.dart';

void main(List<String> args) {
  print("Select the payment method(1 2 or 3)\n1.Paytm\n2.Paypal\n3.Stripe");
  String? paymentMethod = stdin.readLineSync();
  late PaymentProcessor adapter;

  switch (paymentMethod) {
    case "1":
      adapter = PaytmAdapter();
      break;
    case "2":
      adapter = PaypalAdapter();
      break;
    case "3":
      adapter = StripeAdapter();
      break;
  }
  adapter.process(50);
}
