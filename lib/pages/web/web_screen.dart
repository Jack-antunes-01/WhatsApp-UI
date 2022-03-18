import 'package:flutter/material.dart';
import 'package:whatsapp_ui/theme/colors.dart';
import 'package:whatsapp_ui/widgets/chat_list.dart';
import 'package:whatsapp_ui/widgets/contacts_list.dart';
import 'package:whatsapp_ui/widgets/web_chat_app_bar.dart';
import 'package:whatsapp_ui/widgets/web_profile_bar.dart';
import 'package:whatsapp_ui/widgets/web_search_bar.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          //Web Screen
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/backgroundImage.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const WebChatAppBar(),
                const Expanded(child: ChatList()),
                Container(
                  height: 62,
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 5, left: 10, right: 17),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: dividerColor),
                    ),
                    color: chatBarMessage,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions_outlined,
                          size: 26,
                          color: Colors.grey,
                        ),
                      ),
                      Transform.rotate(
                        angle: 0.7,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.attach_file,
                            size: 24,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 12),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: chatBarInputColor,
                              filled: true,
                              hintText: "Type a message",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              hintStyle: const TextStyle(fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mic,
                          size: 26,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
