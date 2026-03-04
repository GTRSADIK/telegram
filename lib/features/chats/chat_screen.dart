import 'package:flutter/material.dart';
import 'widgets/message_bubble.dart';
import 'widgets/message_input.dart';

class ChatScreen extends StatelessWidget {
  final String userName;

  const ChatScreen({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(userName)),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: const [
                MessageBubble(text: "Hello!", isMe: false),
                MessageBubble(text: "Hi there!", isMe: true),
              ],
            ),
          ),
          const MessageInput(),
        ],
      ),
    );
  }
}
