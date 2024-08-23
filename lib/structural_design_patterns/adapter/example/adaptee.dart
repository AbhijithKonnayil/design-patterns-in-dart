class PayPal {
  void sendPayment(double amount) {
    print("Processing PayPal payment of \$${amount}");
  }
}

class Paytm {
  void makePayment(double amount) {
    print("Processing Paytm payment of \$${amount}");
  }
}

class Stripe {
  void processPayment(double amount) {
    print("Processing Stripe payment of \$${amount}");
  }
}
