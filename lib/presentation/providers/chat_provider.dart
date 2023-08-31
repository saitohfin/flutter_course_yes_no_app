import 'package:flutter/material.dart';

import '../../domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScroll = ScrollController();

  final List<Message> messages = [
    Message(text: 'Hola amor', fromWho: FromWho.me),
    Message(text: 'Ya volviste?', fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messages.add(newMessage);

    notifyListeners();
    moveScrollToBottom();
  }

  void moveScrollToBottom() async {

    await Future.delayed(const Duration(milliseconds: 100));

    chatScroll.animateTo(chatScroll.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }
}
