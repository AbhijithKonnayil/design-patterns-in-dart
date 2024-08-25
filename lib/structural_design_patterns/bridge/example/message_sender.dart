//IMPLEMENTOR
abstract class MessageSender {
  void sendPromotional(String msg);
  void sendAlerts(String msg);
  void sendReminders(String msg);
}

class Email implements MessageSender {
  @override
  void sendAlerts(String msg) {
    print("$msg\nSending Alerts via Email");
  }

  @override
  void sendPromotional(String msg) {
    print("$msg\nSending Promotions via Email");
  }

  @override
  void sendReminders(String msg) {
    print("$msg\nSending Reminder via Email");
  }
}

class SMS implements MessageSender {
  @override
  void sendAlerts(String msg) {
    print("$msg\nSending Alerts via SMS");
  }

  @override
  void sendPromotional(String msg) {
    print("$msg\nSending Promotions via SMS");
  }

  @override
  void sendReminders(String msg) {
    print("$msg\nSending Reminder via SMS");
  }
}

class PushNotification implements MessageSender {
  @override
  void sendAlerts(String msg) {
    print("$msg\nSending Alerts via PushNotification");
  }

  @override
  void sendPromotional(String msg) {
    print("$msg\nSending Promotions via PushNotification");
  }

  @override
  void sendReminders(String msg) {
    print("$msg\nSending Reminder via PushNotification");
  }
}
