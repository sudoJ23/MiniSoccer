import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text("Percakapan"),
            backgroundColor: Color.fromRGBO(35, 126, 72, 1),
          ),
          SliverList(delegate: SliverChildListDelegate([
            Container(
              decoration: ShapeDecoration(
                color: Colors.grey.shade300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Minisoccer Surabaya",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Terima kasih telah....")
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}