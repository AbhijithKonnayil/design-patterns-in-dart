import 'message_sender.dart';

//ABSTRACTION
abstract class Message {
  MessageSender messageSender;
  Message(
    this.messageSender,
  );
  void sendMessage(String msg);
}

class PromotionalMsg extends Message {
  PromotionalMsg(
    super.messageSender,
  );
  @override
  void sendMessage(String msg) {
    messageSender.sendPromotional(msg);
  }
}

class AlertMsg extends Message {
  AlertMsg(
    super.messageSender,
  );
  @override
  void sendMessage(String msg) {
    messageSender.sendAlerts(msg);
  }
}

class RemainderMsg extends Message {
  RemainderMsg(super.messageSender);
  @override
  void sendMessage(String msg) {
    messageSender.sendReminders(msg);
  }
}
