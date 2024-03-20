import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class ChatWidgetflutter extends StatefulWidget {
  const ChatWidgetflutter({super.key});

  @override
  State<ChatWidgetflutter> createState() => _ChatWidgetflutterState();
}

class _ChatWidgetflutterState extends State<ChatWidgetflutter> {
  final TextEditingController _messageController = TextEditingController();
  IO.Socket? socket;
  List<String> messages = [];

  @override
  void initState() {
    super.initState();
    connectToServer();
  }

  void connectToServer() {
    socket = IO.io('http://127.0.0.1:5000/', <String, dynamic>{
      'transports': ['websocket'],
    });

    socket!.on('mensaje', (data) {
      setState(() {
        messages.add(data);
      });
    });
  }

  void sendMessage() {
    if (_messageController.text.isNotEmpty) {
      socket!.emit('mensaje', _messageController.text);
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(messages[index]),
                );
              },
            ),
          ),
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _messageController,
                  decoration: InputDecoration(
                    hintText: 'Escribe tu mensaje...',
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: sendMessage,
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}