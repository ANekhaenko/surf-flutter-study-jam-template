import 'package:flutter/material.dart';

import 'package:surf_practice_chat_flutter/data/chat/repository/repository.dart';

/// Chat screen templete. This is your starting point.
class ChatScreen extends StatefulWidget {
  final ChatRepository chatRepository;

  const ChatScreen({
    Key? key,
    required this.chatRepository,
  }) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Widget MyList() {
    return ListView(
      children: [
        ListTile(
          title: Text(widget.chatRepository.messages.toString()),
          leading: Icon(Icons.ac_unit),
        ),
      ],
    );
  }

  // Widget listOfMessages() {
  //   final List<String> items = widget.chatRepository.toString();
  //   return ListView();
  // }

  void _refreshChat() {
    widget.chatRepository.toString();
    print('sadda');
  }

  final textConroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: TextFormField(
          controller: textConroller,
          decoration: const InputDecoration(
            hintText: 'Введите ник',
            hintStyle: TextStyle(color: Colors.white),
          ),
          style: const TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () => {_refreshChat}, icon: const Icon(Icons.refresh))
        ],
      ),
      body: SafeArea(
          child: Container(
        child: MyList(),
      )),
    ));
    throw UnimplementedError();
  }
}
