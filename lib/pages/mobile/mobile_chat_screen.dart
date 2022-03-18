import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants/info.dart';
import 'package:whatsapp_ui/theme/colors.dart';
import 'package:whatsapp_ui/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final double bottomPadding = (media.viewInsets.bottom > 50) ? 0 : 25;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
        titleTextStyle: const TextStyle(
          overflow: TextOverflow.ellipsis,
          fontSize: 19,
        ),
        centerTitle: false,
        titleSpacing: 4,
        leadingWidth: 80,
        leading: Padding(
          padding: const EdgeInsets.only(top: 8, left: 8, bottom: 8),
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: [
                  const Icon(Icons.arrow_back_ios),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      info[0]['profilePic'].toString(),
                    ),
                    radius: 18,
                  ),
                ],
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
            splashRadius: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
            splashRadius: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            splashRadius: 20,
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(child: ChatList()),
          Padding(
            padding:
                EdgeInsets.only(bottom: Platform.isIOS ? bottomPadding : 0),
            child: Container(
              height: 48,
              margin: const EdgeInsets.all(5),
              child: Row(
                children: [
                  Flexible(
                    child: Material(
                      borderRadius: BorderRadius.circular(100),
                      color: mobileChatBoxColor,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.emoji_emotions,
                              color: Colors.grey,
                            ),
                            splashRadius: 20,
                          ),
                          const Flexible(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Type a message",
                                contentPadding: EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.attach_file,
                                color: Colors.grey),
                            splashRadius: 20,
                            // splashRadius: 20,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.monetization_on,
                                color: Colors.grey),
                            splashRadius: 20,
                            // splashRadius: 20,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.camera_alt,
                                color: Colors.grey),
                            splashRadius: 20,
                            // splashRadius: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  InkWell(
                    borderRadius: BorderRadius.circular(360),
                    onTap: () {},
                    child: Ink(
                      width: 48,
                      height: 48,
                      decoration: const BoxDecoration(
                        color: Color(0xff00a884),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
