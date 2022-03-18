import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants/info.dart';
import 'package:whatsapp_ui/widgets/my_message_card.dart';
import 'package:whatsapp_ui/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessageCard(
            date: messages[index]['time'].toString(),
            message: messages[index]['text'].toString(),
          );
        }

        return SenderMessageCard(
          date: messages[index]['time'].toString(),
          message: messages[index]['text'].toString(),
        );
        // SenderMessage -> Card
      },
    );
  }
}
