import 'package:design_patterns_in_dart/structural_design_patterns/bridge/example/message_sender.dart';

import 'message.dart';

void main(List<String> args) {
  MessageSender messageSender = SMS();
  RemainderMsg(
    messageSender,
  ).sendMessage("Hai, Bridge example");
}
