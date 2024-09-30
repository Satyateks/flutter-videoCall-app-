import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: Chat(
        user: const types.User(id: 'user-id'),
        messages: const [],
        onSendPressed: (types.PartialText message) {
          // Handle message sending
        },
      ),
    );
  }
}
