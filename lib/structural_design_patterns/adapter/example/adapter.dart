import 'package:design_patterns_in_dart/structural_design_patterns/adapter/example/adaptee.dart';

abstract class PaymentProcessor {
  void process(double amount);
}

class PaypalAdapter extends PaymentProcessor {
  @override
  void process(double amount) {
    PayPal().sendPayment(amount);
  }
}

class StripeAdapter extends PaymentProcessor {
  @override
  void process(double amount) {
    Stripe().processPayment(amount);
  }
}

class PaytmAdapter extends PaymentProcessor {
  @override
  void process(double amount) {
    Paytm().makePayment(amount);
  }
}
