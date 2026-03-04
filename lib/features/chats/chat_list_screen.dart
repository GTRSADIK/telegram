import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'widgets/chat_tile.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, i) {
        return ChatTile(
          name: "User $i",
          message: "Last message preview...",
          time: "12:${i}0",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ChatScreen(userName: "User $i"),
              ),
            );
          },
        );
      },
    );
  }
}
